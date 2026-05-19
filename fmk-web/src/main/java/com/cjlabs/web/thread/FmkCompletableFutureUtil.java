package com.cjlabs.web.thread;

import com.alibaba.ttl.TtlCallable;
import com.alibaba.ttl.TtlRunnable;
import lombok.extern.slf4j.Slf4j;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionException;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;

/**
 * CompletableFuture 工具类
 * 支持传入任务和线程池，自动包装 TTL 上下文，并统一处理异步异常。
 */
@Slf4j
public final class FmkCompletableFutureUtil {

    private FmkCompletableFutureUtil() {
    }

    /**
     * 异步执行有返回值任务，异常时记录日志并返回 null。
     */
    public static <T> CompletableFuture<T> supplyAsync(Callable<T> task, Executor executor) {
        return supplyAsync(task, executor, throwable -> null);
    }

    /**
     * 异步执行有返回值任务，异常时记录日志并返回 fallbackValue。
     */
    public static <T> CompletableFuture<T> supplyAsyncWithFallback(Callable<T> task,
                                                                   Executor executor,
                                                                   T fallbackValue) {
        return supplyAsync(task, executor, throwable -> fallbackValue);
    }

    /**
     * 异步执行有返回值任务，异常时记录日志并使用 exceptionHandler 生成兜底结果。
     */
    public static <T> CompletableFuture<T> supplyAsync(Callable<T> task,
                                                       Executor executor,
                                                       Function<Throwable, ? extends T> exceptionHandler) {
        Objects.requireNonNull(task, "task must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(exceptionHandler, "exceptionHandler must not be null");

        Callable<T> ttlTask = TtlCallable.get(task);
        try {
            return CompletableFuture.supplyAsync(() -> call(ttlTask), executor)
                    .exceptionally(throwable -> handleSupplyException(throwable, exceptionHandler));
        } catch (Exception e) {
            return CompletableFuture.completedFuture(handleSupplyException(e, exceptionHandler));
        }
    }

    /**
     * 执行有返回值任务，直接返回任务结果；异常时记录日志并返回 null。
     */
    public static <T> T supply(Callable<T> task, Executor executor) {
        return supply(task, executor, throwable -> null);
    }

    // /**
    //  * 执行有返回值任务，直接返回任务结果；异常时记录日志并返回 fallbackValue。
    //  */
    // public static <T> T supplyWithFallback(Callable<T> task, Executor executor, T fallbackValue) {
    //     return supply(task, executor, throwable -> fallbackValue);
    // }

    /**
     * 执行有返回值任务，直接返回任务结果；异常时记录日志并使用 exceptionHandler 生成兜底结果。
     */
    public static <T> T supply(Callable<T> task,
                               Executor executor,
                               Function<Throwable, ? extends T> exceptionHandler) {
        return supplyAsync(task, executor, exceptionHandler).join();
    }

    /**
     * 异步执行无返回值任务，异常时记录日志并吞掉异常。
     */
    public static CompletableFuture<Void> runAsync(Runnable task, Executor executor) {
        return runAsync(task, executor, throwable -> {
        });
    }

    /**
     * 异步执行无返回值任务，异常时记录日志并执行 exceptionHandler。
     */
    public static CompletableFuture<Void> runAsync(Runnable task,
                                                   Executor executor,
                                                   Consumer<Throwable> exceptionHandler) {
        Objects.requireNonNull(task, "task must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(exceptionHandler, "exceptionHandler must not be null");

        Runnable ttlTask = TtlRunnable.get(task);
        try {
            return CompletableFuture.runAsync(ttlTask, executor)
                    .exceptionally(throwable -> handleRunException(throwable, exceptionHandler));
        } catch (Exception e) {
            handleRunException(e, exceptionHandler);
            return CompletableFuture.completedFuture(null);
        }
    }

    private static <T> T call(Callable<T> task) {
        try {
            return task.call();
        } catch (Exception e) {
            throw new CompletionException(e);
        }
    }

    private static Throwable unwrap(Throwable throwable) {
        if (throwable instanceof CompletionException && throwable.getCause() != null) {
            return throwable.getCause();
        }
        return throwable;
    }

    private static <T> T handleSupplyException(Throwable throwable,
                                               Function<Throwable, ? extends T> exceptionHandler) {
        Throwable cause = unwrap(throwable);
        log.error("CompletableFuture任务执行异常", cause);
        return exceptionHandler.apply(cause);
    }

    private static Void handleRunException(Throwable throwable, Consumer<Throwable> exceptionHandler) {
        Throwable cause = unwrap(throwable);
        log.error("CompletableFuture任务执行异常", cause);
        exceptionHandler.accept(cause);
        return null;
    }
}

package cn.lnu.utils.cache;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by CCL on 2018/11/23 0023 下午 2:40
 *
 * @description:
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface GetCache {
    String name() default "";
    String value() default "";
}
package cn.lnu.utils.cache;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 *自定义注解实现redis缓存
 * @author ccl
 */

/**
 *注解的基础：
 * 1、注解的定义：Java文件叫做Annotation，用@interface表示
 * 2、元注解：@interface上面按需要注解上一些东西，包括
 *    @Retention、@Target、@Document、@Inherited四种。
 * 3、注解的保留策略：
 *    @Retention(RetentionPolicy.SOURCE) 注解仅存在于源码中，在class字节码文件中不包含
 *    @Retention(RetentionPolicy.CLASS)默认的保留策略，注解会在class字节码文件中存在，但运行时无法huode
 *    @Retention(RetentionPolicy.RUNTIME)注解会在class字节码文件中存在，在运行时可以通过反射获取到
 *4、注解的作用目标：
 *    @Target(ElementType.TYPE) 接口、类、枚举、注解
 *    @Target(ElementType.METHOD)方法
 *    @Target(ElementType.PARAMETER)方法参数
 *    @Target(ElementType.CONSTRUCTOR)构造函数
 *    @Target(ElementType.LOCAL_VARIABLE)局部变量
 *    @Target(ElementType.ANNOTATION_TYPE)注解
 *    @Target(ElementType.PACKAGE)包
 *5、注解包含在javadoc中:
 *    @Documented
 *6、注解可以被继承
 *    @inherited
 *7、注解解析器：用来解析自定义注解
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface GetCache {

    String name() default "";

    String value() default "";

}
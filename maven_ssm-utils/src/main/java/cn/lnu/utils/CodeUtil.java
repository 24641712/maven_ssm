package cn.lnu.utils;

import java.util.UUID;

/**
 * Created by CCL on 2018/11/18 0018 上午 8:57
 *
 * @description:
 */
public class CodeUtil {
    //生成唯一的激活码
    public String generateUniqueCode(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}

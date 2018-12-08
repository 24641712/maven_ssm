package cn.lnu.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * Created by CCL on 2018/11/21 0021 下午 9:57
 *
 * @description:
 */
@Component("redisCache")
public class RedisCache {

    @Autowired
    private JedisPool jedisPool = new JedisPool() ;

    private byte[] result;

//    @Value("#{prop['redis.password']}")
    @Value("123456")
    private String password;

    public RedisCache(){ }

    public void setPassword(String password) {
        System.out.println("执行了set()方法。");
        this.password = password;
    }

    //从redis缓存中查询，反序列化
    public Object getDataFromRedis(String redisKey){

        System.out.println("从配置文件中获取redis密码：");

        //查询
        Jedis jedis = jedisPool.getResource();
        jedis.auth("123456");
        try {
            result = jedis.get(redisKey.getBytes());
        }catch (Exception e){
            e.printStackTrace();
        }

        //如果查询没有为空
        if(null == result){
            return null;
        }

        //查询到了，反序列化打个字试试
        return SerializeUtil.unSerialize(result);
    }

    //将数据库中查询到的数据放入redis
    public void setDataToRedis(String redisKey, Object obj){

        //序列化
        byte[] bytes = SerializeUtil.serialize(obj);

        //存入redis
        Jedis jedis = jedisPool.getResource();
        jedis.auth("123456");
        String success = jedis.set(redisKey.getBytes(), bytes);

        if("OK".equals(success)){
            System.out.println("数据成功保存到redis...");
        }
    }
}

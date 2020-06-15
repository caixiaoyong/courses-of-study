package lec24JDBC;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Tools {
    //写一个MD5加密的方法
    public static String md5(String plainText) {
        //定义一个字节数组
        byte[] secretBytes = null;
        try {
            //生成一个MD5加密计算摘要
            MessageDigest md = MessageDigest.getInstance("MD5");
            //对字符串进行加密
            md.update(plainText.getBytes());
            //获得加密后的数据
            secretBytes = md.digest();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("没有MD5这个算法！");
        }
        //将加密后的数据转换为16进制数字
        String md5code = new BigInteger(1, secretBytes).toString(16);//16进制数字
        //如果生成数字未满32位，需要前面补0
        for (int i = 0; i < 32 - md5code.length(); i++) {
            md5code = "0" + md5code;
        }
        return md5code;
    }


    public static void main(String[] args) {
        System.out.println(MD5Tools.md5("1234567890"));
        System.out.println(MD5Tools.md5("123456789"));
        System.out.println(MD5Tools.md5("1234567890"));
        //MD5是一个单向函数，x=>f(x) 非常容易
        //f(x)=>x 极度困难或者不可能
        //MD5 脱敏 加密敏感数据 比如密码 password=MD.md5(password)判断
        //MD5 作为文件内容的指纹 确定唯一性，不可替换 用于文件完整性的校验 避免大文件的重复存储，文件秒传
    }
}
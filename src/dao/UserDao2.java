package dao;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerError;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Scanner;

public class UserDao2 {
    final static String DB_FILE ="users.csv.txt";//定义常量
    static HashMap<String, String> users = new HashMap<>();//内存数据库
 static {
     try{
         Scanner cin=new Scanner(new File(DB_FILE));//访问文本
         cin.nextLine();//跳过表头
         while(cin.hasNextLine()){
             String line=cin.nextLine().trim();//字符串username,password读一整行，先trim去掉字符串收尾空格
             if(line.isEmpty())continue;//行不能为空，为空跳过去
             String[] paras=line.split("\\s*,\\s*");//转化成数组并以逗号左右多个空格为分割符
             System.err.println(Arrays.asList(paras));//输出数组
             users.put(paras[0],paras[1]);
         }
         cin.close();
     }catch(IOException e){//一开始当读不到上面的文件时，首先会创建文件，创建一个数据库表头
         File file=new File(DB_FILE);
         try{
            // file.createNewFile();
             PrintWriter pw=new PrintWriter(file);//写入文件
             pw.println("name,password");
             System.err.println(DB_FILE+" created!!!");
             pw.close();
         }catch(IOException e1){
             e1.printStackTrace();
         }

     }
 }
    public static boolean register(String name, String password) {
       //TODO
        if(users.containsKey(name)) {
            System.err.println("用户名已经存在注册失败");
            return false;
        }
        try{
            PrintWriter pw=new PrintWriter(new FileWriter(new File(DB_FILE),true));//追加append，不然就会覆盖源文件
            pw.println(name+","+password);
            System.err.println("注册成功!");
            users.put(name,password);
            pw.close();
            return true;
        }catch(IOException e){
            System.err.println("网站错误，注册失败");
            return false;//有异常，系统错误，报错
        }
    }

    public static boolean login(String user, String password) {
        try {
            Scanner cin = new Scanner(new File(DB_FILE));
            cin.nextLine();//跳过表头
            while (cin.hasNextLine()) {
                String line = cin.nextLine().trim();
                if (line.isEmpty()) continue;
                String[] paras = line.split("\\s*,\\s*");
                if (paras[0].equals(user)) {

                    if(paras[1].equals(password)){
                        System.err.println("登录成功");
                        return true;
                    }else{
                        System.err.println("密码错误");
                        return false;
                    }
                }
                //System.err.println(Arrays.asList(paras));

            }
        }catch(IOException e){

        }
        System.err.println("用户名不存在");
        return false;
    }

    public static boolean updatePassword(String name, String oldPass, String newPass) {
        //TODO
        return true;
    }
    public static void main(String[] args) {
       /** File file=new File(DB_FILE);
        try {
            Scanner cin=new Scanner(file);
            while(cin.hasNextLine()){
                System.out.println(cin.nextLine());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        //output:
        username,password
        tom,123
        cat,666
        admin,admin**/
       register("cy","123456");
       login("cy","123");
       login("cy1","123");
       login("cy","123456");
       login("admin","asd");
       login("admin","admin");
    }

}

//package lec24JDBC;
import java.sql.*;
public class JDBCDemo {
    public static void main(String[] args) throws Exception {
        try {
            // 加载驱动类
            Class.forName("com.mysql.jdbc.Driver");//添加jar包
            String url = "jdbc:mysql://localhost:3306/table?user=cy&password=cy122100";  // 建立连接
            Connection conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();// 创建Statement对象
            String query = "select *from table_name";
            ResultSet rs = stmt.executeQuery(query); // 执行SQL语句
            while (rs.next()) {
                System.out.println(rs.getInt(1) + "\t" + rs.getString(2)
                        + "\t\t" + rs.getString(3) + "\t\t" + rs.getString(4));
            }
            rs.close();
            stmt.close();
            conn.close();

        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

import java.io.*;
import java.util.Scanner;

public class TestNull {
    public static void main(String[] args) {
        Scanner cin=new Scanner(new BufferedInputStream(System.in));//缓冲包装，性能提高
        PrintWriter cout=new PrintWriter(new BufferedOutputStream(System.out));
        //PrintWriter cout=new PrintWriter(System.out,true);autoFlush只要检测到缓冲区有值就会输出结果，量多情况下效率低
        //FileWriter fout=new FileWriter(new File("a.text"),true);append追加
        while(cin.hasNext()){
            int a=cin.nextInt();
            int b=cin.nextInt();
            cout.println(a+b);
        }
        cin.close();
        cout.close();
    }
}

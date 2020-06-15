import java.util.Scanner;

public class Ex_repl1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int A;
        int B;
        int result1;
        int result2;
        int result3;
        int result4;
        
        System.out.print("자연수를 입력하세요>> ");
        A = scanner.nextInt();
        B = scanner.nextInt();
        
        result1 = A * (B%100%10);
        result2 = A * ((B%100) - (B%100%10));
        result3 = A * (B/100) * 100;
        result4 = result1 + result2 + result3;
        
        System.out.print(result1 + "\n");
        System.out.print(result2 + "\n");
        System.out.print(result3 + "\n");
        System.out.print(result4 + "\n");
        scanner.close();
    }
}
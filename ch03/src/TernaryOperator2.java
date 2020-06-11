import java.util.Scanner;

public class TernaryOperator2 {
	public static void main(String[] args) {
		int a;
		int b;
		
		Scanner index = new Scanner(System.in);
		
		System.out.print("a의 수를 입력하세요.");
		a = index.nextInt();
		System.out.print("b의 수를 입력하세요.");
		b = index.nextInt();
		
		System.out.println("두 수의 차는 " + ((a>b)?(a-b):(b-a)));
	}

}

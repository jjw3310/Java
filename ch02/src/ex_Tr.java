import java.util.Scanner;

public class ex_Tr {
	public static void main(String[] args) {
		boolean t;
		int a;
		int b;
		int c;
		
		Scanner value = new Scanner(System.in);
		
		System.out.print("정수 3개를 입력하시오>> ");
		a = value.nextInt();
		b = value.nextInt();
		c = value.nextInt();
		
		if (a > b+c) {
			System.out.println("삼각형을 만들 수 없어요.");
			return;
		}
		else if (b > a+c) {
			System.out.println("삼각형을 만들 수 없어요.");
			return;
		}
		else if (c > a+b) {
			System.out.println("삼각형을 만들 수 없어요.");
			return;
		}
		else
			System.out.println("삼각형이 됩니다.");
		value.close();
	}
}

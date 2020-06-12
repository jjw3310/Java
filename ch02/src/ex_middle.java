import java.util.Scanner;

public class ex_middle {
	public static void main(String[] args) {
		int a;
		int b;
		int c;
		Scanner number = new Scanner(System.in);
		
		System.out.print("정수 3개 입력 >>");
		a = number.nextInt();
		b = number.nextInt();
		c = number.nextInt();
		
		if (a > b && a > c) {
			if (b > c) {
				System.out.println(b);
			}
			else
				System.out.println(c);
		}
		else if (a > b && a < c) {
			System.out.println(a);
		}
		else if (a < b && a < c) {
			if (b > c) {
				System.out.println(c);
			}
			else
				System.out.println(b);
		}
		else if (a < b && a > c) {
			System.out.println(a);
		}
		number.close();
	}
}
		

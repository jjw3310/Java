import java.util.Scanner;

public class Triangle {
	public static void main(String[] args) {
		int a;
		int b;
		int c;
		
		Scanner value = new Scanner(System.in);
		
		System.out.print("정수 3개를 입력하시오>> ");
		a = value.nextInt();
		b = value.nextInt();
		c = value.nextInt();
		
		if ((a+b)<c || (a+c)<b || (b+c)<a)
			System.out.println("삼각형을 만들 수 없습니다.");
		else
			System.out.println("삼각형이 됩니다.");
		value.close();
	}
}

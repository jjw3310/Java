import java.util.Scanner;

public class midian {
	public static void main(String[] args) {
		Scanner number = new Scanner(System.in);
		int a;
		int b;
		int c;
		
		System.out.print("정수 3개 입력 >>");
		a = number.nextInt();
		b = number.nextInt();
		c = number.nextInt();
		
		int midian = a;
		
		if ((a >= b && a <= c) || (a >= c && a <= b))
			midian = a;
		else if((b >= a && b <= c) || (b >= c && b <= a))
			midian = b;
		else
			midian = c;
		
		System.out.println("중간 값은 " + midian);
		number.close();
	}
}
		

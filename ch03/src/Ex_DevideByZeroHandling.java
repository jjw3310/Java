import java.util.Scanner;

public class Ex_DevideByZeroHandling {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int dividend;
		int divisor;
		
		System.out.print("나뉨수를 입력하세요.");
		dividend = scanner.nextInt();
		System.out.print("나눗수를 입력하세요.");
		divisor = scanner.nextInt();
		
		try {
			System.out.print(dividend + "/" + divisor + " = " + (double)dividend/(double)divisor);
		}
		catch (ArithmeticException els) {
			System.out.println("0으로 나눌 수 없습니다.");
		}
	}
}
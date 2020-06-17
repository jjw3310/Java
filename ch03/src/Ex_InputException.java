import java.util.Scanner;
import java.util.InputMismatchException;

public class Ex_InputException {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int sum = 0, n = 0;

		System.out.println("정수 3개를 입력하세요");
		for (int i = 0; i < 3; i++) {
			System.out.print(i+ ">>");
			try {
				n = scanner.nextInt();
			}
			catch (InputMismatchException e) {
				System.out.println("정수가 아닙니다. 다시 입력해주세요.");
				scanner.nextLine();
				i--;
				continue;
			}
			sum += n;
		}
		System.out.println("합은 " + sum + "입니다.");
		scanner.close();
	}
}

import java.util.Scanner;
import InputMismatchException;

public class Ex_Multiply {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		do {
			System.out.print("곱하고자 하는 두 수 입력 >> ");
			try {
				int m = scanner.nextInt();
				int n = scanner.nextInt();
				System.out.print(m + "x" + n + "=" + m*n);
				break;
			} catch (InputMismatchException e) {
				System.out.println("실수는 입력하면 안됩니다.");
				scanner.nextLine();
				continue;
				
			}
			scanner.close();
		}
}}

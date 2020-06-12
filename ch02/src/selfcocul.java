import java.util.Scanner;

public class selfcocul {
	public static void main(String[] args) {
		double oh1;
		double oh2;
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("연산>> ");
		oh1 = scanner.nextDouble();
		String oh = scanner.next();
		oh2 = scanner.nextDouble();
		
		if (oh == "+") {
			double res = oh1 + oh2
		} else if (oh == "-") {
			double res = oh1 - oh2
		} else if (oh == '*') {
			double res = oh1 * oh2
		} else if (oh == '/') {
			double res = oh1 / oh2
		}
		
	}

}

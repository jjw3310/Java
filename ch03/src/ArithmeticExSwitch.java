import java.util.Scanner;

public class ArithmeticExSwitch {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("연산>>");
		int op1 = scanner.nextInt();
		String op = scanner.next();
		int op2 = scanner.nextInt();
		
		int res = 0;
		
		switch (op) {
			case "+":
				res = op1 + op2;
				break;
			case "-":
				res = op1 - op2;
				break;
			case "*":
				res = op1 * op2;
				break;
			case "/":
				if (op2 == 0) {
					System.out.print("0으로는 나눌 수 없습니다.");
					scanner.close();
					return;
				}
				res = op1 / op2;
			default :
				System.out.print("사칙연산이 아닙니다.");
				scanner.close();
				return;
		}
		System.out.print(op1 + op + op2 + "의 계산 결과는 " + res + "입니다.");
		scanner.close();
	}
}
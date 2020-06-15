import java.util.Scanner;

public class BreakExample {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		while(true) {
			System.out.print(">>");
			String index = scanner.next();
			if (index.equals("exit")) {
				break;
			}
		}
		System.out.print("종료합니다");
	}

}

import java.util.*;

public class NumberGame {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int number;
		int count;
		int answer = 59;
		
		count = 0;

		do {
			System.out.print("정수를 입력하세요 >> ");
			number = scanner.nextInt();
			count++;

			if (number < answer) {
				System.out.println(number + "보다 큽니다.");
			} else if (number > answer) {
				System.out.println(number + "보다 작습니다.");
			}
		} while (number != answer);
		System.out.println("축하합니다. 시도횟수는 =" + count + "입니다.");
	}
}

import java.util.Scanner;

public class WhileSample {
	public static void main(String[] args) {
		int count;
		int sum;
		int number;
		Scanner scanner = new Scanner(System.in);

		System.out.print("정수를 입력하세요");
		number = scanner.nextInt();
		
		sum = 0;
		count = 0;
		while (number != -1) {
			sum += number;
			count++;
			System.out.print("정수를 입력하세요");
			number = scanner.nextInt();
		}
		if (count > 0) {
			System.out.print("입력하신 수의 평균은" + (double)sum/count + "입니다.");
		}
		else
			System.out.print("입력이 잘못되었습니다.");
	}
}

import java.util.Scanner;

public class Averager {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int total;
		int count;
		
		total = 0;
		count = 0;
		while (true) {
			System.out.print("점수를 입력하시오. ");
			int score = scanner.nextInt();
			if (score < 0)
				break;
			total += score;
			count++;
		}
		System.out.println("평균은 " + total/count + "입니다.");
	}

}

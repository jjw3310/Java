import java.util.Scanner;

public class Nestedif {
	public static void main(String[] args) {
		int score;
		int grade;

		Scanner succese = new Scanner(System.in);

		System.out.print("점수를 입력하세요: ");
		score = succese.nextInt();
		System.out.print("학년을 입력하세요: ");
		grade = succese.nextInt();

		if (score > 59) {
			if (grade != 4) {
				System.out.println("합격입니다.");
			} else if (score >= 70) {
				System.out.println("합격입니다.");
			} else
				System.out.println("불합격입니다.");
		} else
			System.out.println("불합격입니다.");
	}

}

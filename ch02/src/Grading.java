import java.util.Scanner;

public class Grading {
	public static void main(String[] args) {
		char grade;
		Scanner scanner = new Scanner(System.in);

		System.out.print("점수를 입력하세요(1~100): ");
		int score = scanner.nextInt();
		
		if (score > 100 || score < 0) {
			System.out.println("다시 입력해주세요.");
			scanner.close();
			return;
		}
		if (score >= 90) {
			grade = 'A';
		} else if (score >= 80) {
			grade = 'B';
		} else if (score >= 70) {
			grade = 'C';
		} else if (score >= 60) {
			grade = 'D';
		} else
			grade = 'F';
		System.out.printf("%s ", "학점은");
		System.out.printf("%c",  grade);
		System.out.printf("%s",  "입니다.");

		scanner.close();
	}

}

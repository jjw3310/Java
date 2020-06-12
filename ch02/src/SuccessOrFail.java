import java.util.Scanner;

public class SuccessOrFail {
	public static void main(String[] args) {
		Scanner test = new Scanner(System.in);
		int score;
		
		System.out.print("점수를 입력하시오.");
		score = test.nextInt();
		
		if (score >= 80) {
			System.out.println("축하합니다. 합격입니다.");
		}
		else
			System.out.println("죄송합니다. 불합격입니다.");
	}

}

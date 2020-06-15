import java.util.Scanner;

public class Star1 {
	public static void main(String[] args) {
		Scanner star = new Scanner(System.in);

		System.out.print("정수를 입력하세요 >> ");

		int n = star.nextInt();

		for (int i = 0; i < n; i++) {
			for (int k = 0; k < n; k++) {
				System.out.print("*");
			}
			System.out.println("");
		}
	}

}
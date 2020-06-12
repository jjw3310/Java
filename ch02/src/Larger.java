import java.util.Scanner;

public class Larger {
	public static void main(String[] args) {
		int x, y, max = 0;
		
		
		Scanner input = new Scanner(System.in);
		System.out.print("첫번째 정수: ");
		
		x = input.nextInt();
		
		System.out.print("두번째 정수: ");
		y = input.nextInt();
		
		if (x == y)
			System.out.println("두 수가 같습니다.");
		else {
//			max = x > y ? x : y;
			if (x > y) {
			max = x;
			}
			else {
			max = y;
			}
			System.out.println("큰 수는" + max);
		}
		// max = (x > y) ? x : y;
		input.close();
	}
}

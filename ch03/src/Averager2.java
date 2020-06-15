import java.util.Scanner;

public class Averager2 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int count;
		int total;
		/*int A;
		int B;
		int C;
		int D;*/
		int index[];
		
		count = 1;
		total = 0;

		System.out.print("점수를 입력하시오. ");
	/*	A = scanner.nextInt();
		B = scanner.nextInt();
		C = scanner.nextInt();
		D = scanner.nextInt();
		*/
		for (int i = 0; i < count; i++) {
			index[i] = scanner.nextInt();
			count++;
			total += index;
			if (count - i == 0)
				break;
		}
		System.out.println("평균은 " + total/count + "입니다.");
	}
}

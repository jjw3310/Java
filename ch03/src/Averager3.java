import java.util.Scanner;

public class Averager3 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int count;
		int total;
		int intArray[] = new int[args.length];
		
		count = 0;
		total = 0;

		System.out.print("점수를 입력하시오. ");
		for (int i = 0; i < args.length; i++) {
			intArray[i] = scanner.nextInt();
			count++;
		}
		for (int i = 0; i <= count; i++) {
			total += intArray[i];
		}
		System.out.println("평균은 " + total/count + "입니다.");
	}
}

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
		int intArray[] = new int[5];
		int i;
		
		i = 0;
		count = 0;
		total = 0;

		System.out.print("점수를 입력하시오. ");
	/*	A = scanner.nextInt();
		B = scanner.nextInt();
		C = scanner.nextInt();
		D = scanner.nextInt();
		*/
		for (i = 0; i < 10; i++) {
			intArray[i] = scanner.nextInt();
			count++;
			if (intArray[i] == 0)
				break;
		}
		for (i = 0; i < count; i++) {
			total += intArray[i];
		}
		System.out.print(intArray[i]);
		System.out.println("평균은 " + total/count + "입니다.");
	}
}

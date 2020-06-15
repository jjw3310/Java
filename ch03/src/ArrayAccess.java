import java.util.Scanner;

public class ArrayAccess {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		int arrayindex[] = new int[5];
		
		int max = 0;
		System.out.print("정수 5개를 입력하세요 >> ");
		for (int i = 0; i < 5; i++) {
			arrayindex[i] = scanner.nextInt();
			if (arrayindex[i] > max) {
				max = arrayindex[i];
			}
			System.out.print(arrayindex[i] + "\n");
		}
		System.out.print("최대값은 " + max);
		scanner.close();
	}

}

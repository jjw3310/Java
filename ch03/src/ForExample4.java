import java.util.Scanner;

public class ForExample4 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("반복 횟수 >> ");
		
		int k = sc.nextInt();
		
		for (int i = 0; i < k; i++) {
			System.out.println("홍길동");
		}
		sc.close();
	}

}

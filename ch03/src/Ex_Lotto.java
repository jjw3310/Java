import java.util.Random;

public class Ex_Lotto {
	public static void main(String[] args) {
		int[] lotto= { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
				11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
				21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
				31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
				41, 42, 43, 44, 45 };
		int[] answer = new int[6];
		Random random = new Random();
		
		for (int i = 0; i < 6; i++) {
			int num = random.nextInt(45);
			answer[i] = lotto[num];			
		}
		System.out.print("당첨번호는 ");
		for (int i = 0; i < 6; i++) {
			System.out.print(answer[i] + " ");
		}
		System.out.print("입니다.");
	}
}

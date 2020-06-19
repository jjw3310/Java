package ex04;

import java.util.Scanner;
import java.util.Random;

public class Ex_ChoiceNum {
	public static void main(String[] args) {
		Random random = new Random();
		int com = random.nextInt(100)+1;
		Scanner scanner = new Scanner(System.in);
		int count;
		
		count = 0;
		while (true) {
				System.out.print("숫자를 입력하세요 >> ");
				int num = scanner.nextInt();
				if (num == com) {
					System.out.println("정답입니다. 도전 횟수는 " + count + "입니다.");
					break;
				} else if (num < com) {
					System.out.println("더 큰 수를 입력해주세요!");
				} else {
					System.out.println("더 작은 수를 입력해주세요!");
				}
				count++;
		}
		scanner.close();
		
		if (count <= 3) {
			System.out.println("당신의 추리력은 최고!");
		} else if (count <= 5) {
			System.out.println("당신의 추리력은 훌륭합니다!");
		} else
			System.out.println("당신의 추리력은 보통입니다.");
		}
}



		
		
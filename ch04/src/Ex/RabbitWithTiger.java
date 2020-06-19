package Ex;

import java.util.Scanner;
import java.util.Random;

public class RabbitWithTiger {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		Random random = new Random();
		String value[] = {"가위", "바위", "보"};
		
		while (true) {
			int num = (int)random.nextInt(3);
			String tiger = value[num];
			System.out.print("가위 바위 보!! >> ");
			String rabbit = scanner.next();
			if (rabbit.equals("종료")) {
				System.out.println("종료되었습니다.");
				break;
			}
			if (rabbit.equals("가위")) {
				System.out.println("토끼 : " + rabbit + "\n호랑이 : " + tiger);		
				if (tiger.equals("가위"))
					System.out.println("비겼습니다.");
				else if (tiger.equals("바위"))
					System.out.println("호랑이가 이겼어요.");
				else
					System.out.println("토끼가 이겼네! 잘했어요. 오구오구");
			} else if (rabbit.equals("바위")) {
				System.out.println("토끼 : " + rabbit + "\n호랑이 : " + tiger);	
				if (tiger.equals("바위"))
					System.out.println("비겼습니다.");
				else if (tiger.equals("보"))
					System.out.println("호랑이가 이겼어요.");
				else
					System.out.println("토끼가 이겼다!");
			} else if (rabbit.equals("보")) {
				System.out.println("토끼 : " + rabbit + "\n호랑이 : " + tiger);	
				if (tiger.equals("보"))
					System.out.println("비겼습니다.");
				else if (tiger.equals("가위"))
					System.out.println("호랑이가 이겼어요.");
				else
					System.out.println("토끼가 이겼어!");
			} else
				System.out.println("다시 입력해주세요 >> ");
		}
		scanner.close();
	}
}

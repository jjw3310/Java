import java.util.Scanner;

public class GBBwithComputer {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String wow[] = {"가위", "바위", "보"};
		
		while (true) {
			System.out.print("가위 바위 보!>> ");
			String o = scanner.nextLine();
			if (o.equals("그만")) {
				System.out.print("게임을 종료합니다.");
				break;
			}
			int n = (int)(Math.random()*3);
			String b = wow[n];
			
			if (o.equals("가위")) {
				if (b.equals("가위"))
					System.out.println("비겼습니다.");
				else if (b.equals("바위"))
					System.out.println("컴퓨터가 이겼습니다.");
				else if (b.equals("보"))
					System.out.println("이겼습니다!");
			}
			
			else if (o.equals("바위")) {
				if (b.equals("가위"))
					System.out.println("이겼습니다!");
				else if (b.equals("바위"))
					System.out.println("비겼습니다.");
				else if (b.equals("보"))
					System.out.println("컴퓨터가 이겼습니다.");
			}
			
			else if (o.equals("보")) {
				if (b.equals("가위"))
					System.out.println("컴퓨터가 이겼습니다.");
				else if (b.equals("바위"))
					System.out.println("이겼습니다!");
				else if (b.equals("보"))
					System.out.println("비겼습니다.");
			}
			else
				System.out.println("입력이 잘못되었습니다.");
		}
		scanner.close();
	}
}
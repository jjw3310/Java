import java.util.Scanner;

public class Ex_SeqSearch {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int s[] = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 };
		int i, number, index=0;
		
		System.out.print("탐색할 값을 입력하시오.");
		String exit = scanner.next();
		System.out.print("탐색할 정수를 입력하세요 >> ");
		number = scanner.nextInt();
		while (true) {
			if (exit.equals("그만")) {
				System.out.println("종료합니다.");
				break;				
			}
			if (s[i] == number) {
				System.out.print("입력하신 값 " + number + "는 " + index + "번째 위치에 있습니다.");
				index++;
			}
			scanner.close();
		}
	}
}

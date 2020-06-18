import java.util.Scanner;

public class SeqSearch {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int s[] = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
		int number, index = 0;
		
		System.out.print("탐색할 값을 입력하시오.");
		number = scanner.nextInt();
		for (int i = 0; i < s.length; i++) {
			if (s[i] == number) {
				index = i;
			}
		}
		System.out.println(index);
		
		if (index < s.length && index >= 0)
			System.out.print("입력하신 값 " + number + "는 " + index + "번째 위치에 있습니다.");
		
		scanner.close();
	}

}

import java.util.Scanner;

public class number {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int number;
		int ten;
		int one;
		
		System.out.print("2자리수 정수 입력(10~99)>>");
		number = scanner.nextInt();
		ten = number/10;
		one = number%10;
		
		if(number < 10 || number > 99) {
			System.out.println("10~99 사이의 정수만 입력하세요.");
			scanner.close();
			return;
		}
		
		if(ten == one) {
			System.out.println("Yes! 10의 자리와 1의 자리가 같습니다");
		}
		else
			System.out.println("No! 10의 자리와 1의 자리가 같지 않습니다");
		
		scanner.close();
		
	}

}

import java.util.Scanner;

public class Ex_ContinueExample {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("정수 5개를 입력하세요");
		int index = scanner.nextInt();
		for(int i=0; i<5; i++)
		{
			if (index > 0)
				index += index;
			}
			else
				continue;
		}
		System.out.print(index);
	}
}
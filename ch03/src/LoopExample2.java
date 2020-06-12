import java.util.Scanner;

public class LoopExample2 {
	public static void main(String[] args) {
		int number;
		int i;
		System.out.print("구구단 중에 출력하고 싶은 단을 입력하시오: ");
		Scanner scanner = new Scanner(System.in);
		number = scanner.nextInt();
		
		i = 1;
		while (i < 100) {
			System.out.println(number + " * " + i + " = " + number*i + "입니다.");
			i++;
		}
	}

}

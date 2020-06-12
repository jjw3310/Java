import java.util.Scanner;

public class ex_MultipleOfThree {
	public static void main(String[] args) {
		int number;
		int value;
		
		Scanner in = new Scanner(System.in);
		
		System.out.print("수를 입력하시오: ");
		number = in.nextInt();
		value = number % 3;
		
		if(number % 3 == 0)
			System.out.println("3의 배수입니다.");
		else
			System.out.println("3의 배수가 아닙니다." + "3으로 나눌 경우 나머지는 " + value);
		
		in.close();
	}

}

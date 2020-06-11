import java.util.Scanner;

public class ArithmeticOperator {
	public static void main(String[] args) {
		int time;
		int second;
		int minute;
		int hour;
		
		Scanner auto = new Scanner(System.in);
		
		System.out.print("계산하고 싶은 초를 입력하세요.");
		time = auto.nextInt();
		second = time % 60;
		minute = (time / 60) % 60;
		hour = (time / 60) / 60;
		
		System.out.print(time + "초는");
		System.out.print(hour + "시간, ");
		System.out.print(minute + "분, ");
		System.out.print(second + "초 입니다.");
		
		auto.close();
	}
}
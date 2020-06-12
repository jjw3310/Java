import java.util.Scanner;

public class ex_ChangeMoney {

	public static void main(String[] args) {
		long start = System.nanoTime(); //시작하는 시점 계산
		 
		/*
		실행시간을 측정하고싶은 코드
		*/
		 
		
		Scanner scanner = new Scanner(System.in);

		System.out.print("금액을 입력하시오>>");
		int won = scanner.nextInt();
		int fifth = won/50000;
		int ten = won%50000/10000;
		int one = won%50000%10000/1000;
		int hun = won%50000%10000%1000/100;
		int five = won%50000%10000%1000%100/50;
		int sip = won%50000%10000%1000%100%50/10;
		int il = won%50000%10000%1000%100%50%10/1;
		
		System.out.println("오만원권 " + fifth + "매");
		System.out.println("만원권 " + ten + "매");
		System.out.println("천원권 " + one + "매");
		System.out.println("백원 " + hun + "개");
		System.out.println("오십원 " + five + "개");
		System.out.println("십원 " + sip + "개");
		System.out.println("일원 " + il + "개");
		
		scanner.close();
		
		long end = System.nanoTime(); //프로그램이 끝나는 시점 계산
		System.out.println( "실행 시간 : " + ( end - start )/1000.0 + "초"); 

	}	
}
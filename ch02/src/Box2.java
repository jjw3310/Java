import java.util.Scanner;

public class Box2 {
	public static void main(String[] args) {
		double up; //윗변
		double down;  //아랫변
		double high;  //높이
		double area;  //넓이
		
		Scanner index = new Scanner(System.in);  //Scanner index 변수 선언
		
		System.out.print("사다리꼴의 윗변의 길이는? ");  //입력창 출력
		up = index.nextDouble();  //입력값 첫번재 값 up 변수에 저장
		System.out.print("사다리꼴의 아랫변의 길이는? ");  //입력창 출력
		down = index.nextDouble();  //입력값 두번째 값 down 변수에 저장
		System.out.print("사다리꼴의 높이는? ");  // 입력창 출력
		high = index.nextDouble();  //입력값 세번째 값 high 변수에 저장
		area = (up + down)*high/2;  //넓이 계산값 area 변수에 저장
		
		System.out.println("사다리꼴의 넓이는 :"+ area +"입니다.");  //area 변수 저장값 출력
		
		index.close();  //Scanner index 변수 종료
	}
}

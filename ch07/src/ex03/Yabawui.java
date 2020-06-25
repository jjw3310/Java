package ex03;
/* 
시작 누르면 *을 포함한 정수 배열 출력
?의 같은 길이 배열 출력 e.g >> ????????
선택하면 랜덤 정수에 맞는 위치로 모든 위치 변경 (ArrayList.add 이용)
흠.. 선택할 수 있는 번호 배열 출력
if (선택한 번호에 *이 있으면)
	축하합니다 출력*/
import java.util.Random;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Iterator;

public class int RandomEx {
	public rand() {
		int rand[] = new int [10];
		for (int i=0; i<rand.length; i++)
			rand[i] = random.nextInt(10);
		return rand[i];
	}
	
}

public class Yabawui extends RandomEx {
	public static void main(String[] args) {
		Random random = new Random();
		Scanner scanner = new Scanner(System.in);
		int rand[] = new int [10];
		for (int i=0; i<rand.length; i++) {
			rand[i] = random.nextInt(10);
		}
		
		ArrayList<Object> v = new ArrayList<Object>();

		v.add(1); v.add(3); v.add(5);
		v.add("*"); v.add(9); v.add(4);
		v.add(2); v.add(6); v.add(8);
		v.add(10);
		
		Iterator<Object> it = v.iterator();
		
		System.out.println("시작");
		while (it.hasNext()) {
			Object n = it.next();
			System.out.print(n + " ");
		}
		while (it.hasNext()) {
			System.out.print("?");
		}
		System.out.println("*은 몇 번째 자리에 있을까요?");
		int num = scanner.nextInt();
		
		while (it.hasNext()) {
			v.add(i, rand()) // 클래스 아니면 객체만 들어갈 수 있음!
			
		
			
			
			
			int rd = random.nextInt(10);
			
		}
			

			while(in.hasNext()) {
		}
		
		
		
		while()
	    else
	    	꽈아앙
		
	}

}

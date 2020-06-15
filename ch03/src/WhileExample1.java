
public class WhileExample1 {
	public static void main(String[] args) {
		int i = 0;
		while (i < 5) {
			System.out.println("홍길동");
			i++;
		}
	}

}

public class WhileExample1 {
	public static void main(String[] args) {

long starttime = System.nanoTime();// 시작점 시간 저장 save time when your code started
		int i = 0;
		while (true) {
			System.out.println("홍길동");
			i++;
			if (i == 5)
				break;

/*----------------------------------------
        코드 your codes
----------------------------------------*/
 
long endtime = System.nanoTime();// 모든 코드가 실행되고 시간 저장 save time when your code ended
 
long estimatedTime = endtime - starttime;//시작점과 끝점을 계산하여 걸린 시간 측정 calculate the spending time of your code

System.out.println(estimatedTime);

		}
	}

}




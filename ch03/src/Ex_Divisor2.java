import java.util.Scanner;

public class Ex_Divisor2 {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.print("범위를 설정하시오. ");
		int n = scan.nextInt();
		int solo[] = new int[n];
		int count=0;
		int start=0;
		boolean ask;
		
		for (int i = 2; i <= n; i++) {
			count = 0;
			
			for (int j = 2; j < i; j++) {
				if (i % j == 0) {
					count++;
					break;
				}
			}
			if (count==0) {
			solo[start] = i;
			start++;
			}
		}
		for (int i = 0; i < n; i++) {
//			if (i+1 )
			System.out.println(i+1 + "는 소수가 아닙니다.");
			System.out.println(solo[i] + "는 소수 입니다.");
		}
		/*
		for (int i = 0; i < start; i++) {
			System.out.print(i+1 + "는 ");
			if (solo[i] == i)
				System.out.println("소수 입니다.");
			else
				System.out.print("소수가 아닙니다.");
		}*/
	}
}
			//System.out.println(solo[start]);
			//start++;


			
/*			if (solo[i-2] == i) {
				System.out.print(i + "는 소수 입니다.");
			}
			else
				System.out.print(i + "는 소수가 아닙니다.");
			start++;
	}
}*/

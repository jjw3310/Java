package ex05;

public class Lotto {

	public static void main(String[] args) {
		int n[] = new int [6];
		
	/*	for(int i=0; i<n.length; i++) {
			int r = (int)(Math.random()*45 + 1);
			n[i] = r;
		}
		*/
		for(int i=0; i<n.length; i++) {
			int r = (int)(Math.random()*45 + 1);
			n[i] = r;
			for (int j=0; j<n.length; j++) {        
				if (n[i] == n[j] && i != j)  //j<i 조건 가능! i--;
					n[i] = (int)(Math.random()*45 + 1);
			}
		}

		System.out.print("랜덤한 정수들 : ");
		for(int i=0; i<n.length; i++)
			System.out.print(n[i] + " ");
	}
}

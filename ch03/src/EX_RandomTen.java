
public class EX_RandomTen {
	public static void main(String[] args) {
		int n[] = new int[10];
		int sum = 0;
		int count = 0;
		int average;
		
		for (int i = 0; i < n.length; i++) {
			n[i] = (int)(Math.random()*10 + 1);
			sum += n[i];
			System.out.print(n[i] + " ");
			count++;
		}
		System.out.print("의 평균은 \n" + (double)sum/n.length + "입니다.");
	}

}




public class ForSample {
	public static void main(String[] args) {
		int i;
		int sum;
		sum = 0;
		
		for (i = 1; i <= 10; i++) {
			sum += i;
			System.out.print(i);
			
			if (i < 10)
				System.out.print("+");
			else {
				System.out.print("=");
				System.out.print(sum);
			}
		}
		
	}
}
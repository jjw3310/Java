import java.util.Scanner;

public class SortArray {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int n[] = new int[5];
		
		System.out.print("정수 5개 입력>> ");
		for(int i=0; i<n.length; i++) {
			n[i] = scanner.nextInt();
			System.out.print(n[i] + " ");
		}
		System.out.println();
		
		for(int i=0; i<n.length; i++) {
			for(int j=i; j<n.length; j++) {
				if(n[i] > n[j]) {
					int tmp = n[i];
					n[i] = n[j];
					n[j] = tmp;
				}
			}
			System.out.print(n[i] + " ");
		}
		scanner.close();
	}
}

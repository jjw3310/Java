package ex11;

import java.util.Scanner;

public class Ex_StaticMember {
	private static double rate;
	public double toDollar(double a, double b) {
		return won / rate;
	}
	public double toKWR(double a, double b) {
		return won * rate;
	}
	public double set(double r) {
		rate = r;
	}
}

public static void main(String[] args) {
	Scanner scanner = new Scanner(System.in);
	System.out.print("환율 >> ");
	double rate = scanner.nextInt();
	
	
	
	
}
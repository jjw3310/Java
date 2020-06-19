package ex08;

public class MethodSample2 {
	
	public int getSum(int i, int j) {
		return i + j;
	}
	public int getSum(int i, int j, int k) {
		return i + j + k;
	}
	public double getSum(double i, double j) {
		return i + j;
	}

	public static void main(String args[]) {
		MethodSample haha = new MethodSample();
		int i = haha.getSum(1, 2);
		int j = haha.getSum(1, 2, 3);
		double k = haha.getSum(1.1, 2.2);
		
		System.out.println(i);
		System.out.println(j);
		System.out.println(k);
	}
}
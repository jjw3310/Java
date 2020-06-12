
public class DoWhileSample {
	public static void main(String[] args) {
		char first = 97;
		
		do {
			System.out.print(first);
			first = (char)(first + 1);
		} while (first < 'z');
	}
}
import java.util.Scanner;

public class UpperLower {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int idx;
		int upper = 0;
		int lower = 0;
		
		System.out.print("영어 단어를 입력하세요");
		String voca = scanner.next();
		
		for (idx = 0; idx < voca.length(); idx++) {
			char ch = voca.charAt(idx);
			if (ch >= 'A' && ch <= 'Z')
				upper++;
			if (ch >= 'a' && ch <= 'z')
				lower++;
		}
		System.out.println("입력하신 단어의 대문자 갯수는 : " + upper + "입니다.");
		System.out.println("입력하신 단어의 소문자 갯수는 : " + lower + "입니다.");
		scanner.close();
	}
}

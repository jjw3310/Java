package ex07;

public class StrMethod {
	public static void main(String[] args) {
		String str1="java";
		str1 = str1 + " programming";
		System.out.println(str1);
		System.out.println(str1.length());
		String str2 = str1.concat(" programming");
		System.out.println(str2);
		System.out.println(str1);
		System.out.println(str1.charAt(2));
		str2 = "java program";
		
		System.out.println(str2.indexOf("program"));
		System.out.println(str2.indexOf("오라클"));
		if(str2.indexOf("java") != -1) {
			System.out.println("찾는 내용이 있습니다.");
		} else {
			System.out.println("찾는 내용이 없습니다.");
		}
		
		str2 = "jaa program";
		
		System.out.println(str2.substring(0,4));
		System.out.println(str2.substring(5));  ㅜnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
	}

}

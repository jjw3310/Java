
public class CharArray {
	public static void main(String[] args) {
		char[] ch = {'J', 'a', 'v', 'a', 'b', 'c', 'd'};
		System.out.println("배열의 사이즈:" + ch.length);
		
		int index=0;
		for (char c : ch) {
			System.out.println(index + "번째 문자" + c);
			index++;
		}
	}

}


public class CharArray {
	public static void main(String[] args) {
		char ch[] = {'J', 'a', 'v', 'a', 'b', 'c', 'd' };
		System.out.println("배열의 사이즈:" + ch.length);
		
		int index = 0;/*
		for (int i = 0; i < ch.length; i++) {
			System.out.print(index + "번째 문자 " + ch[i]);
		}*/
		for(char c : ch){
			System.out.print(index + "번째 문자 " + c);
			index++;
		}
	}
}
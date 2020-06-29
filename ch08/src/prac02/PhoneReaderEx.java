package prac02;

import java.io.*;

public class PhoneReaderEx {
	public static void main(String[] args) {
		FileReader fr = null;
		File f = new File("c:\\temp\\phone.txt");
		try {
			fr = new FileReader(f);
			System.out.println(f.getPath() + "를 출력합니다.");
			while(true) {
				int c = fr.read();
				if(c == -1)
					break;
				System.out.print((char)c);
			}
			fr.close();
		} catch (IOException e) {
			System.out.println("오류");
			e.printStackTrace();
		}
	}

}

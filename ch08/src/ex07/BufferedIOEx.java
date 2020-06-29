package ex07;

import java.util.Scanner;
import java.io.*;

public class BufferedIOEx {
	public static void main(String[] args) {
		FileReader fin = null;
		int c;
		try {
			fin = new FileReader("c:\\Temp\\test2.txt");
			BufferedOutputStream out = new BufferedOutputStream(System.out);
			while ((c = fin.read()) != -1) {
				out.write(c);
			}
			new Scanner(System.in).nextLine();
			out.flush();
			fin.close();
			out.close();
		} catch (IOException e) {
			System.out.println("오류!");
		}
		
	}

}

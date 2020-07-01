package ex01;

/*import javax.swing.*;
//많이 쓰진 않는 방식
class MyFrame extends JFrame {
	public MyFrame() {
		setTitle("300x300 스윙 프레임 만들기");
		setSize(300,300);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		MyFrame frame = new MyFrame(); // new MyFrame();
	}

}
*/
import javax.swing.*;

public class MyFrame extends JFrame {
	public MyFrame() {
		setTitle("300x300 스윙 프레임 만들기");
		setSize(300, 300);
		setVisible(true);
	}
	
	public static void main(String[] args) {
		MyFrame frame = new MyFrame();
	}
}
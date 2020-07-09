package ex00;

import java.awt.*;
import javax.swing.*;

public class WalkingTextFrame extends JFrame {
	WalkingTextFrame() {
		super("움직이는 텍스트를 가진 레이블");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(new FlowLayout());
		add(new WalkingLabel("지금은 공부하는 시간입니다."));
		setSize(250, 150);
		setVisible(true);
	}
	class WalkingLabel extends JLabel implements Runnable {
		String text;
		int count = 1;
		WalkingLabel(String text) {
			this.text = text;
			new Thread(this).start();
		}
		public void run() {
			while(true) {
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {return;}
				String s = text.substring(0, count);
				setText(s);
				
				count %= text.length();
				count++;
			}
		}
	}
	public static void main(String[] args) {
		new WalkingTextFrame();
	}
}

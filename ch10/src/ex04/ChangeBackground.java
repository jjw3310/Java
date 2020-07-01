package ex04;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

class MyFrame extends JFrame {
	private JButton button1;
	private JButton button2;
	private JButton button3;
	
	private JPanel panel;
	MyListener listener = new MyListener();
	
	public MyFrame() {
		setSize(300, 200);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setTitle("이벤트 예제");
		panel = new JPanel();
		button1 = new JButton("노란색");
		button1.addActionListener(listener);
		button2 = new JButton("핑크색");
		button2.addActionListener(listener);
		button3 = new JButton("녹색");
		button3.addActionListener(listener);
		panel.add(button1);
		panel.add(button2);
		panel.add(button3);
		
		add(panel);
		setVisible(true);
	}
	
	private class MyListener implements ActionListener {
		public void actionPerformed(ActionEvent e) {
			if (e.getSource() == button1) {
				panel.setBackground(Color.YELLOW);
			} else if (e.getSource() == button2) {
				panel.setBackground(Color.PINK);
			} else if (e.getSource() == button3) {
				panel.setBackground(Color.GREEN);
			}
		}
	}
}
public class ChangeBackground {
	public static void main(String[] args) {
		MyFrame t = new MyFrame();
	}

}

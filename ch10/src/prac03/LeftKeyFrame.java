package prac03;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class LeftKeyFrame extends JFrame {
	public LeftKeyFrame() {
		super("Left 키로 문자열 교체");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		JLabel label = new JLabel("Love Java");
		c.add(label);
		
		label.addKeyListener(new KeyAdapter() {
			public void keyPressed(KeyEvent e) {
				if(e.getKeyCode() == KeyEvent.VK_LEFT) {
					JLabel la = (JLabel)e.getSource();
					System.out.println(la);
					StringBuffer text = new StringBuffer(la.getText());
					la.setText(text.reverse().toString());
				}
			}
		});
		c.add(label);
		setSize(250, 100);
		setVisible(true);
		
		label.setFocusable(true);
		label.requestFocus();
	}
	static public void main(String[] args) {
		new LeftKeyFrame();
	}
}

package prac01;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

import javax.swing.JLabel;

public class MouseEventFrame extends JFrame {
	public MouseEventFrame() {
		super("마우스 올리기 내리기 연습");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		JLabel label = new JLabel("Love Java");
		c.add(label);
		
		label.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				JLabel la = (JLabel)e.getSource();
				la.setText("Love Java");
			}
			public void mouseExited(MouseEvent e) {
				JLabel la = (JLabel)e.getSource();
				la.setText("사랑해");
			}
		});
		setSize(250, 150);
		setVisible(true);
	}
	static public void main(String[] args) {
		new MouseEventFrame();
	}
}

/*
package prac01;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MouseEventFrame extends JFrame {
	public MouseEventFrame() {
		super("마우스 이벤트");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		
		
	}
}

*/
package prac02;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MouseDraggingFrame extends JFrame {
	public MouseDraggingFrame() {
		super("드래깅동안 YELLOW로 변경");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
		c.setBackground(Color.GREEN);
		
		MyMouseListener m1 = new MyMouseListener();
		c.addMouseMotionListener(m1);
		c.addMouseListener(m1);
		
		setSize(250, 150);
		setVisible(true);
	}
	class MyMouseListener extends MouseAdapter {
		public void mouseDragged(MouseEvent e) {
			JComponent c = (JComponent)e.getSource();
			c.setBackground(Color.YELLOW);			
		}
		public void mouseReleased(MouseEvent e) {
			JComponent c = (JComponent)e.getSource();
			c.setBackground(Color.GREEN);
		}
	}
	static public void main(String[] args) {
		new MouseDraggingFrame();
	}

}


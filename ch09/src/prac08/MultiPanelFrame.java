package prac08;

import java.awt.*;
import javax.swing.*;

public class MultiPanelFrame extends JFrame {
	public MultiPanelFrame() {
		super("여러 개의 패널을 가진 프레임");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		Container c = getContentPane();

		c.add(new SouthPanel(), BorderLayout.SOUTH);
		c.add(new CenterPanel(), BorderLayout.CENTER);
		c.add(new NorthPanel(), BorderLayout.NORTH);
		setSize(300, 300);
		setVisible(true);
	}

	public static void main(String[] args) {
		new MultiPanelFrame();
	}

}

class SouthPanel extends JPanel {
	public SouthPanel() {
		setBackground(Color.GRAY);
		setLayout(new FlowLayout(FlowLayout.LEFT));
		add(new JButton("word Input"));
		add(new JTextField(15));
	}
}
class CenterPanel extends JPanel {
	public CenterPanel() {
		setBackground(Color.WHITE);
		setLayout(null);
		for(int i=0; i<10; i++) {
			JLabel l = new JLabel("*");
			l.setSize(20, 20);
			l.setForeground(Color.RED);
		l.setLocation((int)(Math.random()*250+10), (int)(Math.random()*200+10));
		
			add(l);
		}
	}
}
class NorthPanel extends JPanel {
	public NorthPanel() {
		setBackground(Color.LIGHT_GRAY);
		setLayout(new FlowLayout());
//		add(new JLabel("Hello"));
		add(new JButton("열기"));
		add(new JButton("닫기"));
		add(new JButton("나가기"));
		
	}/*
	public static void main(String[] args) {
		new MultiPanelFrame();
	}*/
}
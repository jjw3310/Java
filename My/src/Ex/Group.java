package Ex;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Group extends JFrame {
	private String apple;
	private String peach;
	private String bear;
	public static void main(String[] args) {
		JButton a = new JButton("사과");
		JButton b = new JButton("복숭아");
		JButton c = new JButton("곰");
		
		setTitle("헬로");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.add(a);
		
	}

}

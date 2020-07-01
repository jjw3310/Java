package ex02;
/*
import javax.swing.*;
import java.awt.FlowLayout;

public class MyFrame extends JFrame {
	public MyFrame() {
		setSize(300, 200);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("MyFrame");
		
		setLayout(new FlowLayout());
		JButton button = new JButton("버튼");
		this.add(button);
		setVisible(true);
	}

}
*/

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class MyFrame extends JFrame {
	public MyFrame() {
		setSize(300, 500);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Hllo");
		
		setLayout(new FlowLayout());
		JButton button = new JButton("setSize(int x, int y)");
		add(button);
		setVisible(true);
	}
	public static void main(String[] args) {
		new MyFrame();
	}
}

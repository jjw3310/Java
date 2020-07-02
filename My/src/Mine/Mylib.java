package Mine;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

class MyFrame extends JFrame {
	public MyFrame() {
		setSize(400, 1000);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle("Mylib");
		Container c = getContentPane();
		
		c.setLayout(new FlowLayout(FlowLayout.RIGHT, 50, 50));
		c.add(new JButton("setSize(int x, int y)"));
		c.add(new JButton("setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE)"));
		c.add(new JButton("setTitle(\"name\")"));
		c.add(new JButton("Container c = getContentPane()"));
		c.add(new JButton("setLayout(new FlowLayout(FlowLayout.CENTER, 50, 50))"));
		c.add(new JButton("add(new JButton(\"add\"), BorderLayout.SOUTH))"));
		c.add(new JButton("setVisible(true)"));
		c.add(new JButton("setBackground(Color.green)"));
		c.add(new JButton("JLabel label1 = new JLabel(\"Hello\")"));
		c.add(new JButton("JTextField field1 = new JTextField(10)"));
		c.add(new JButton("GridLayout grid = new GridLayout(4, 2)"));
		c.add(new JButton("grid.setVgap(5)"));
		c.add(new JButton("setLocation(i*15, i*15)"));
		c.add(new JButton("JPanel p = new JPanel()"));
		c.add(new JButton("setBounds(20, 5, 95, 30)"));
		c.add(new JButton("setLocation(130, 170)"));
		c.add(new JButton("add(new JCheckBox(\"C# JCheckBox\"))"));
		c.add(new JButton("btn[i] = new JButton(Integer.toString(i))"));
		c.add(new JButton("label[i].setOpaque(true)"));
		c.add(new JButton("label[i].setBackground(color[i])"));
		c.add(new JButton("label.setOpaque(true)"));
		c.add(new JButton("c.add(new SouthPanel(), BorderLayout.SOUTH)"));
		c.add(new JButton("setLayout(new GridLayout(4,4,5,5))"));
		c.add(new JButton("JButton b = (JButton)e.getSource()"));
		c.add(new JButton("if(b.getText().equals(\"Action\"))"));
		c.add(new JButton("btn.addActionListener(new MyActionListener())"));
		
		setLayout(new FlowLayout());
		
		JButton button = new JButton("setSize(int x, int y)");
		setVisible(true);
	}
}

public class Mylib {
	public static void main(String[] args) {
		new MyFrame();	
	}
}

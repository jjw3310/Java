package Mine;

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.util.*;

public class JavaStudy extends JFrame {
	private Vector<String> input = new Vector<String>();
	private JList<String> study = new JList<String>(input);
	private JTextField tf = new JTextField(20);
	
	public JavaStudy() {
		setTitle("Java Study");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		setLayout(new FlowLayout());
		setSize(500, 500);
		setVisible(true);		
		
		c.add(tf);
		input.add("setTitle(\"text\")");
		study.setVisibleRowCount(5);
		study.setFixedCellWidth(100);

		JButton Okay = new JButton("Okay");
		c.add(Okay);
		
		c.add(new JScrollPane(study));
		
		/*
		input.add("황기태");
		input.add("이재문");
		study.setVisibleRowCount(5);
		study.setFixedCellWidth(100);
		c.add(new JScrollPane(study));*/

	}
	public static void main(String[] args) {
		new JavaStudy();
	}
}
	
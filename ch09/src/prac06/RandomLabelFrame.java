package prac06;

import java.awt.*;
import javax.swing.*;

public class RandomLabelFrame {
	public RandomLabelFrame() {
		super("Random Labels");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
		c.setLayout(null);
		
		for(int i=0; i<20; i++) {
			JLabel label = new JLabel(Integer.toString(i));
			label.setOpaque(true);
			label.setBackground(Color.YELLOW);
			int x = (int)(Math.random()*200) + 50;
			int y = (int)(Math.random()*200) + 50;
			label.setLocation(x,y);
			label.setSize(20,20);
		}
	}

}

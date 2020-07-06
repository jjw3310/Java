package prac03;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;


public class MoneyChangerFrame extends JFrame {
	public MoneyChangerFrame() {
		setTitle("Money Changer");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setContentPane(new MyPanel());
		
		setSize(300, 300);
		setVisible(true);
	}
	class MyPanel extends JPanel {
		private int[] unit = {50000, 10000, 5000, 1000, 500, 100, 50, 10, 1};
		private String[] text = {"오만원", "만원", "오천원", "천원", "500원",
				"100원", "50원", "10원", "1원"};
		private JTextField source;
		private JTextField[] tf = new JTextField[8];
		
		protected MyPanel() {
			setBackground(Color.PINK);
			setLayout(null);
			
			JLabel la = new JLabel("금액");
			la.setHorizontalAlignment(JLabel.RIGHT);
			la.setSize(50, 20);
			la.setLocation(20, 20);
			add(la);
			
			source = new JTextField(30);
			source.setSize(100, 20);
			source.setLocation(100, 20);
			add(source);
			
			JButton calcBtn = new JButton("계산");
			calcBtn.setSize(70, 20);
			add(calcBtn);
			
			for(int i=0; i<text.length; i++) {
				la = new JLabel(text[i]);
				la.setHorizontalAlignment(JLabel.RIGHT);
				la.setSize(50, 20);
				la.setLocation(50, 50+i*20);
				add(la);
				tf[i] = new JTextField(30);
				tf[i].setHorizontalAlignment(JTextField.CENTER);
				tf[i].setSize(70, 20);
				tf[i].setLocation(120, 50+i*20);
				
				add(tf[i]);
			}
			
			calcBtn.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					String str = source.getText();
					if(str.length() == 0) return;
					
					int money = Integer.parseInt(str);
					int res;
					for(int i=0; i<unit.length; i++) {
						res = money/unit[i];
						tf[i].setText(Integer.toString(res));
						if(res > 0)
							money = money%unit[i];
					}
				}
			});
		}
	}
	public static void main(String[] args) {
		new MoneyChangerFrame();
	}

}

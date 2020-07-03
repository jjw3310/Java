package ex00;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class DigitChangerFrame extends JFrame {
	JTextField src = new JTextField(8);
	JTextField dest = new JTextField(8);
	JRadioButton radio[] = new JRadioButton[4];
	String[] text = {"decimal", "binary", "octal", "hex"};
	
	DigitChangerFrame() {
		super("Digit Changer");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(new FlowLayout());
		
		ButtonGroup g = new ButtonGroup();
		MyItemListener listener = new MyItemListener();
		
		add(src);
		add(new JLabel("==>"));
		add(dest);
		
		for(int i=0; i<radio.length; i++) {
			radio[i] = new JRadioButton(text[i]);
			radio[i].addItemListener(listener);
			add(radio[i]);
			g.add(radio[i]);
		}
		setSize(280, 150);
		setVisible(true);
	}
	
	class MyItemListener implements ItemListener {
		public void itemStateChanged(ItemEvent e) {
			if(e.getStateChange() != ItemEvent.SELECTED)
				return;
			int n;
			String text = ((JRadioButton)e.getItem()).getText();
			try {
				switch(text) {
				case "decimal":
					n = Integer.parseInt(src.getText());
					dest.setText(Integer.toString(n));
					break;
				case "binary":
					n = Integer.parseInt(src.getText());
					dest.setText(Integer.toBinaryString(n));
					break;
				case "octal":
					n = Integer.parseInt(src.getText());
					dest.setText(Integer.toOctalString(n));
					break;
				case "hex":
					n = Integer.parseInt(src.getText());
					dest.setText(Integer.toHexString(n));
					break;
					
				}
			} catch(NumberFormatException exp) {
				dest.setText("변환할 수 없습니다.");
			}
		}
	}
	public static void main(String[] args) {
		new DigitChangerFrame();
	}
}

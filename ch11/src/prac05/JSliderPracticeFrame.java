package prac05;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.event.ChangeEvent;

public class JSliderPracticeFrame extends JFrame {
	private JSlider slider = new JSlider(100, 200, 150);
	private JLabel label = new JLabel("        ");
	public JSliderPracticeFrame() {
		super("JSlider Practice Frame");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		c.add(slider);
		c.add(label);
		
		slider.setMajorTickSpacing(20);
		slider.setPaintLabels(true);
		slider.setPaintTicks(true);
		
		label.setHorizontalAlignment(JLabel.CENTER);
		label.setOpaque(true);
		label.setBackground(Color.GREEN);
		label.setText(Integer.toString(slider.getValue()));
		
		slider.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				JSlider s = (JSlider)e.getSource();
				label.setText(Integer.toString(s.getValue()));
			}
		});				
		setSize(300, 150);
		setVisible(true);
	}
	public static void main(String[] args) {
		new JSliderPracticeFrame();
	}
}
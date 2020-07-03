package ex14;

import java.awt.*;
import javax.swing.*;

public class SliderEx extends JFrame {
	public SliderEx() {
		setTitle("슬라이더 만들기 예제");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		JSlider slider = new JSlider(JSlider.HORIZONTAL, 0, 200, 100);
		slider.setPaintLabels(true);
		slider.setPaintTicks(true);
		slider.setPaintTrack(false);
		slider.setMajorTickSpacing(30);
//		slider.setMinorTickSpacing(50);
		c.add(slider);
		
		setSize(300, 100);
		setVisible(true);
	
	}
	public static void main(String[] args) {
		new SliderEx();
	}
}

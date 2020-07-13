package ex00;

import java.awt.*;
import java.awt.image.BufferedImage;
import javax.swing.*;

public class Capture {
	
	public static void main(String[] args) {
		JFrame capture = new JFrame();
		capture.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Dimension d;
		Rectangle rect = new Rectangle(1000, 1000);
		capture.setSize(d = new Dimension(1000, 1000));
		
		try {
			Robot robot = new Robot();
			final BufferedImage image = robot.createScreenCapture(rect);
			image.flush();
			JPanel panel = new JPanel() {
				public void paintComponent(Graphics g) {
					g.drawImage(image, 0, 0, d.width, d.height, this);
				}
			};
			
			panel.setOpaque(false);
			panel.prepareImage(image, panel);
			panel.repaint();
			capture.getContentPane().add(panel);
		} catch(Exception e) {e.printStackTrace();}
		
		capture.setVisible(true);
	}
}
package prac02;

import java.awt.*;
import javax.swing.*;

public class RandomCircleFrame extends JFrame {
	RandomCircleFrame() {
		super("원을 일정한 시간 간격으로 이동 시키기");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setContentPane(new CirclePanel());
		setSize(300, 300);
		setVisible(true);
	}
class CirclePanel extends JPanel implements Runnable {
	int x = 100;
	int y = 100;
	
	CirclePanel() {
		new Thread(this).start();
	}
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		g.setColor(Color.MAGENTA);
		g.drawOval(x, y, 50, 50);
	}
	public void run() {
		while(true) {
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) { return; }
			x = (int)((Math.random()+50)*this.getWidth()-50);
			y = (int)((Math.random()+50)*this.getHeight()-50);
			repaint();
		}
	}
}

	public static void main(String[] args) {
		new RandomCircleFrame();
	}
}

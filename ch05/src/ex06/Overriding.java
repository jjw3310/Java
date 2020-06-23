package ex06;

class Weapon {
	protected int fire() {
		return 1;
	}
}
	/*
	public void change(int a) {
		this.a = a;
	}
}

class Cannon extends Weapon {
	@Override
	public int fire() {
		int a = 10;
		return a;
	}
}*/
class Cannon extends Weapon {
	@Override
	protected int fire() {
		return 10;
	}
}
public class Overriding {
	public static void main(String[] args) {
		Weapon weapon;
		weapon = new Weapon();
		System.out.println("기본 무기의 살상 능력은 " + weapon.fire());
		
		weapon = new Cannon();
		System.out.println("대포의 살상 능력은 " + weapon.fire());
	}
}

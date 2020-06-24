package prac02;

class TV {
	private int size;
	public TV(int size) {this.size = size;}
	protected int getSize() {return size;}
}

class ColorTV extends TV {
	private int nColors;
	public ColorTV(int size, int nColors) {
		super(size);
		this.nColors = nColors;
	}
	protected int getnColors() {return nColors;}
	
	public void printProperty() {
		System.out.println(getSize() + "인치" + nColors + "컬러");
	}
}

public class IPTV extends ColorTV {
	private String ipAddr;
	public IPTV(String ipAddr, int size, int nColors) {
		super(size, nColors);
		this.ipAddr = ipAddr;
	}
	public void printProperty() {
		System.out.print("나의 IPTV는 " + ipAddr + " 주소의 ");
		super.printProperty();
	}
	public static void main(String[] args) {
		IPTV iptv = new IPTV("192.1.1.2", 32, 2048);
		iptv.printProperty();
	}
}


class ColorTV {
	private nColors;
	public ColorTV()
}


public class IPTV extends ColorTV {
	private String ipAddr;
	public IPTV(String ipAddr, int size, int nColors) {
		this.ipAddr = ipAddr;
	}
	public static void main(String[] args) {
		IPTV iptv = new IPTV("192.1.1.2", 32, 2048);
		iptv.print();
	}
}

package com.springbook.ioc.injection;

import java.util.List;
import java.util.Set;

public class CollectionBean {
	/*private List<String> addressList;

	public void setAddressList(List<String> addressList) {
		this.addressList = addressList;
	}
	
	public List<String> getAddressList(){
		return addressList;
	}*/

	private Set<String> addressList;
	
	public void setAddressList(Set<String> addressList) {
		this.addressList = addressList;
	}
	
	public Set<String> getAddressList(){
		return addressList;
	}
}
	

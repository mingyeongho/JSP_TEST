package chapter08;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {

	List<AddrBean> addrList = new ArrayList<AddrBean>();
	
	public void add(AddrBean ab) {
		addrList.add(ab);
	}
	
	public List<AddrBean> getAddrList() {
		return addrList;
	}
}

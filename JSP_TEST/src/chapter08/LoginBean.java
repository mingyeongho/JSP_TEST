package chapter08;

public class LoginBean {

	private String userid;
	private String userpw;
	
	final String _userid = "min";
	final String _userpw = "1234";
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	
	public boolean checkUser() {
		if (userid.equals(_userid)&&userpw.equals(_userpw)) {
			return true;
		} else {
			return false;
		}
	}
	
}

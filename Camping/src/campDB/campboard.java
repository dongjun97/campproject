package campDB;

public class campboard {
	private int num;
	private String id;
	private String Subject;	
	private String Reg_date;
	private int Ref;	
	private int Re_step;
	private int Re_level;
	private int ReadCount;
	private String Content;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public String getReg_date() {
		return Reg_date;
	}
	public void setReg_date(String reg_date) {
		Reg_date = reg_date;
	}
	public int getRef() {
		return Ref;
	}
	public void setRef(int ref) {
		Ref = ref;
	}
	public int getRe_step() {
		return Re_step;
	}
	public void setRe_step(int re_step) {
		Re_step = re_step;
	}
	public int getRe_level() {
		return Re_level;
	}
	public void setRe_level(int re_level) {
		Re_level = re_level;
	}
	public int getReadCount() {
		return ReadCount;
	}
	public void setReadCount(int readCount) {
		ReadCount = readCount;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	
	
}

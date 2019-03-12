package entity;
import java.util.Date;

public class User {
	private int id;
	private String username;
	private int age;
	private int sex;
	private Date createDt;
	private float money;


	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money + this.money;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}
	
	@Override
	public String toString(){
		return "User [id=" + id + ",userName=" + username + ", age=" + age + 
				 ",sex=" + sex + ", createDt="+ createDt + ",money=" + money + "]";
	}

	

}

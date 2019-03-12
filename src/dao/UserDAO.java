package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;



import util.DBHelper;
import entity.Items;
import entity.User;
	
public class UserDAO {//inquire all
	public List<User> queryAll() throws Exception {
		PreparedStatement stmt = null;
		Connection conn = DBHelper.getConnection();
		String sql = "SELECT * FROM user";
		List<User> userList = new ArrayList<User>();
		
		stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			User user = new User();
			user.setId(rs.getInt("id"));
			user.setUsername(rs.getString("user_name"));
			user.setAge(rs.getInt("age"));
			user.setSex(rs.getInt("sex"));
			user.setCreateDt(rs.getDate("create_dt"));
			user.setMoney(rs.getFloat("money")+3000);
			
			userList.add(user);
		}
		
		return userList;
	}
	
	

	
	public void addUser(User user) throws Exception {			//add an item
		Connection conn = DBHelper.getConnection();
		String sql = "INSERT INTO user(user_name, age, sex, create_dt,money) "
				+ " VALUES(?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user.getUsername());
		pstmt.setInt(2, user.getAge());
		pstmt.setInt(3, user.getSex());
		pstmt.setDate(4, new Date(new java.util.Date().getTime()));
		pstmt.setFloat(5, user.getMoney());
		
		pstmt.execute();
	}
	
	public static void main(String[] args) {
		UserDAO dao = new UserDAO();
			User user = new User();
			
			user.setUsername("Tom");
			user.setAge(20);
			user.setSex(1);
			user.setMoney(200);
			try {
				dao.addUser(user);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			try {
				List<User> userList = dao.queryAll();
				for(User user1 : userList) {
					System.out.println(user1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
	}


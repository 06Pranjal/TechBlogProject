package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.User;



public class RegisterDao {
	private Connection con;

	public RegisterDao(Connection con) {
		this.con = con;
	}
	
	
	//method to insert user
	
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			if (this.con == null) {
	            System.out.println("⛔ Connection is null in RegisterDao!");
	            return false;
	        }
			
			String query="insert into register(name,email,password,gender) values(?,?,?,?)";
			
			PreparedStatement pstmt=this.con.prepareStatement(query);
			
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getEmail());
			pstmt.setString(3,user.getPassword());
			pstmt.setString(4,user.getGender());
			
			int result = pstmt.executeUpdate();
			System.out.println("Insert result: " + result);
			f = result > 0;

		}
		catch(Exception e) {
		    e.printStackTrace(); // This prints to console/logs
		    System.out.println("Error inserting user: " + e.getMessage());
		}

		return f;
	}
	
	
	
	
	public User getUserByEmailAndPassword(String email,String password) {
		User user=null;
		
		try {
			
			String query="select * from register where email=? and password=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet set=pstmt.executeQuery();
			
			if(set.next()) {
				
				user=new User();
				String name=set.getString("name");
				user.setName(name);
				
				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setDateTime(set.getTimestamp("dateTime"));
				user.setProfile(set.getString("profile"));
				
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	

}

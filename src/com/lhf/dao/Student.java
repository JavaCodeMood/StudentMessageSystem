package com.lhf.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lhf.db.Conn;
import com.lhf.domain.StudentInfo;


public class Student {
	Conn conn = new Conn();
	/**
	 * 获取学生列表
	 * @return
	 * @throws SQLException
	 */
	public List<StudentInfo> getList() throws SQLException {
		List<StudentInfo> list = new ArrayList<StudentInfo>();
		String sql = "select * from student order by number asc";
		ResultSet rs = conn.executeQuery(sql);
		
		while (rs.next()) {
			StudentInfo info = new StudentInfo();
			info.setId(rs.getInt("Id"));
			info.setNumber(rs.getString("Number"));
			info.setName(rs.getString("Name"));
			info.setAddress(rs.getString("Address"));
			info.setPhone(rs.getString("Phone"));
			info.setSex(rs.getString("Sex"));
			info.setEmail(rs.getString("Email"));
			list.add(info);
		}
		conn.close();
		return list;
	}
	/**
	 * 获取单个学生信息
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public StudentInfo getStudent(String id) throws SQLException{
		StudentInfo info= new StudentInfo();
		String sql ="select * from student s where id='"+id+"'";
		ResultSet rs = conn.executeQuery(sql);
		if(rs.next())
		{	
			info.setId(rs.getInt("Id"));
			info.setNumber(rs.getString("Number"));
			info.setName(rs.getString("Name"));
			info.setAddress(rs.getString("Address"));
			info.setPhone(rs.getString("Phone"));
			info.setSex(rs.getString("Sex"));
			info.setEmail(rs.getString("Email"));	
		}
		conn.close();
		return info;
	}
	/**
	 * 添加
	 * @param info
	 * @return
	 */
	public int insert(StudentInfo info)
	{
		String sql = "insert into student(number,name,address,phone,sex,email) values ";
		sql = sql + " ('"+info.getNumber()+"','"+info.getName()+"','"+info.getAddress()+"','"+info.getPhone()+"','"+info.getSex()+"','"+info.getEmail()+"')";
		int result = 0;
		System.out.println(sql);
		result = conn.executeUpdate(sql);
		conn.close();
		return result;	
	}
	/**
	 * 编辑 
	 * @param info
	 * @return
	 */
	public int update(StudentInfo info) {
		String sql = "update student set"
				+ " number='"+info.getNumber()+"',name='"+info.getName()+"',address='"+info.getAddress()+"',phone='"+info.getPhone()+"',sex='"+info.getSex()+"',email='"+info.getEmail()+"' where id='"+info.getId()+"'";
		int result = 0;
		System.out.println(sql);
		result = conn.executeUpdate(sql);
		conn.close();
		return result;	
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	public int delete(String id)
	{
		String sql = "delete from student where id ='"+id+"'";
		int result = 0;
		System.out.println(sql);
		result = conn.executeUpdate(sql);
		conn.close();
		return result;	
	}	
	
}

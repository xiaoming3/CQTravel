package com.dao;

import java.util.Date;

import com.bean.User;
import com.bean.UserInfo;
import com.util.Tools;
import com.util.hibernate.DataStore;
import com.util.hibernate.Sql;

public class UserBPO {
	
	private static Sql sql=new Sql();
	
	public static User loginCheck(String id,String pwd) throws Exception{
		
		if(Tools.isNull(id)||Tools.isNull(pwd))
			return null;
		
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, id);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0){
			throw new Exception("�û���������");
		}
		String password=ds.getString(0, "password");
		if(!pwd.equals(password))
			throw new Exception("�������");
		
		User u=new User();
		u.setId(id);
		u.setPassword(password);
		
		u.setProperty(UserInfo.getInfoById(id));
		return u;
		
	}
	
	/**
	 * ��������ʱ��֤����֤����
	 * @param id ѧ��
	 * @param idcard ����֤����
	 * @return
	 * @throws Exception
	 */
	public static User resetCheck(String id,String idcard) throws Exception {
		
		if(Tools.isNull(id)||Tools.isNull(idcard))
			return null;
		
		Tools.idcardCheck(idcard);
		
		sql.setSql("select idcard from s_user_info where id= ?");
		sql.setString(1, id);
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0)
			throw new Exception("��ID["+id+"]��Ӧ��������Ϣ������");
		
		String idnum=ds.getString(0, "idcard");
		if(!idnum.equals(idcard))
			throw new Exception("���������֤����["+idcard+"]��ID["+id+"]������֤���벻ƥ��");
		
		String resetPwd=idnum.substring(12);
		sql.setSql("update s_user set password = ? where id = ?");
		sql.setString(1, resetPwd);
		sql.setString(2, id);
		sql.executeUpdate();
		
		User u=new User();
		u.setId(id);
		u.setPassword(resetPwd);
		return u;
	}
	
	public static User alterPwd(String id,String oldpwd,String newpwd) throws Exception {
		
		if(Tools.isNull(id)||Tools.isNull(oldpwd)||Tools.isNull(newpwd))
			return null;
		
		if(!Tools.isNumOrStr(newpwd))
			throw new Exception("���������������[0-9]����ĸ[a-z��A-Z]�����!");
		
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, id);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0){
			throw new Exception("�û���������");
		}
		String password=ds.getString(0, "password");
		if(!oldpwd.equals(password))
			throw new Exception("ԭ�������");
		
		sql.setSql("update s_user set password = ? where id = ?");
		sql.setString(1, newpwd);
		sql.setString(2, id);
		sql.executeUpdate();
		
		User u=new User();
		u.setId(id);
		u.setPassword(newpwd);
		//UserInfo ui=new Student().getInfoById(id);
		//u.setProperty(ui);
		
		return u;
	}
	
	public static void delete(String id) throws Exception {
		if(Tools.isNull(id))
			throw new Exception("idΪ�գ�");
		
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, id);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0){
			throw new Exception("�û���������");
		}
		
		sql.setSql("delete from s_user where id = ? ");
		sql.setString(1, id);
		sql.executeUpdate();
	}
	public static void main(String[] args) throws Exception {
		UserBPO.loginCheck("2012211685", "143526");
	}

	public static User register(String user, String pwd) throws Exception {
		if(Tools.isNull(user)||Tools.isNull(pwd))
			return null;
		
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, user);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()!=0){
			throw new Exception("�û����Ѵ���");
		}
		
		sql.setSql("insert into s_user values(?,?,?)");
		sql.setString(1, user);
		sql.setString(2, pwd);
		sql.setDateTime(3, new Date(System.currentTimeMillis()));
		sql.executeUpdate();
		
		User u=new User();
		u.setId(user);
		u.setPassword(pwd);
		
		
		
		return u;
	}

	public static User getUserById(String id) throws Exception {
		if(Tools.isNull(id))
			return null;
		
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, id);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0){
			throw new Exception("ϵͳ�����û���Ϣ������");
		}
		String password=ds.getString(0, "password");
		
		User u=new User();
		u.setId(id);
		u.setPassword(password);
		
		u.setProperty(UserInfo.getInfoById(id));
		return u;
	}

	public static void deleteUserById(String id) throws Exception{
		sql.setSql("select * from s_user where id= ?");
		sql.setString(1, id);
		
		DataStore ds=sql.executeQuery();
		
		if(ds.rowCount()==0){
			throw new Exception("ϵͳ�����û���Ϣ������");
		}
		
		sql.setSql("delete from s_user where id = ?");
		sql.setString(1, id);
		sql.executeUpdate();
		
		
	}
}
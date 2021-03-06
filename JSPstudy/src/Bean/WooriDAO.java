package Bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WooriDAO {
	Connection con;
	PreparedStatement st;
	ResultSet rs;
	//  오라클에 접속
	public void getCon() {
		try {
		    Class.forName("oracle.jdbc.OracleDriver");
		    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
	
		}catch (Exception e) {
			System.out.println("DB 접근 실패");
		}
	}
	
	// 개별 정보 검색
	public WooriBean readDB(String id, String password) {
		WooriBean bean = new WooriBean();
		try {
			getCon();
			String sql = "select * from Woori where id='" + id + "'";
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			if (rs.next()) {
  				if(password.equals(rs.getString("password"))) {
					bean.setId(rs.getString("id"));
					bean.setName(rs.getString("name"));
  					bean.setPassword(rs.getString("password"));
					bean.setEmail(rs.getString("email"));
   				} 
			}
			rs.close();
			st.close();
			con.close();
		} catch(Exception e) {
			System.out.println("DB 읽기 실패");
		}
		return bean;
	}
	
	// 전체 레코드 검색
	public List<WooriBean> readAllDB() {
		List<WooriBean> list = new ArrayList<WooriBean>();
		
		try {
			getCon();
			String sql = "select * from Woori";
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next()) {
				WooriBean bean = new WooriBean();
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
	 			bean.setPassword(rs.getString("password"));
				bean.setEmail(rs.getString("email"));
				list.add(bean);
			}
			rs.close();
			st.close();
			con.close();
		} catch(Exception e) {
			System.out.println("전체 DB 읽기 실패");
		}
		return list;
	}
}

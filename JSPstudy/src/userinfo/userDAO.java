package userinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class userDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public boolean idcheck(String id)	{
		String sql = "select password from userinfo where id='" + id + "'";
		try	{
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next())
				return true;
			else
				return false;
		}
		catch (Exception e)	{
			System.out.println("아이디 read 오류");
		}
		finally	{
			DBCon.close(con, ps, rs);
		}
		return false;
	}
	
	public void insertDB(user user)	{
		String sql = "INSERT INTO userinfo"
				+ "(id, name, password, tel, job, gender, hobby, intro)"
				+ "values (?,?,?,?,?,?,?,?)";
		
		try {
			con = DBCon.getCon();
			// insert문을 이용하여 데이터를 추가시킨다
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getJob());
			ps.setInt(6, Integer.parseInt(user.getGender()));
			ps.setString(7, user.getHobby());
			ps.setString(8, user.getIntro());
			ps.executeUpdate();
		}catch	(Exception e)	{
			System.out.println("user insert 오류");
		}finally	{
			DBCon.close(con, ps, rs);
		}
	}
	
	// 개별 정보 검색
	public user readDB(String userid)	{
		user user = new user();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from userinfo where id = '" + userid + "'";
		
		try	{
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next())	{
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setTel(rs.getString("tel"));
				user.setJob(rs.getString("job"));
				user.setGender(rs.getString("gender"));
				user.setHobby(rs.getString("hobby"));
				user.setIntro(rs.getString("intro"));
			}
		}
		catch (Exception e)	{
			System.out.println("user 읽기 오류");
		}
		finally	{
			DBCon.close(con, ps, rs);
		}
		return user;
	}
	
	// 전체 레코드 검색
	public List<user> readAllDB()	{
		ArrayList<user> list = new ArrayList<user>();
		
			String sql = "select * from userinfo";
		
		try	{
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next())	{
				user user = new user();
				user.setName(rs.getString("name"));
				user.setId(rs.getString("id"));
				user.setPassword(rs.getString("password"));
				user.setTel(rs.getString("tel"));
				user.setJob(rs.getString("job"));
				user.setGender(rs.getString("gender"));
				user.setHobby(rs.getString("hobby"));
				user.setIntro(rs.getString("intro"));
				list.add(user);
			}
		}
		catch (Exception e)	{
			System.out.println("전체 목록 읽기 오류");
		}
		finally	{
			DBCon.close(con, ps, rs);
		}
		return list;
	}
	
	public void dbUpdate(user user)	{
		
		String sql = "UPDATE userinfo" 
				+ " SET name = ?, tel = ?, job = ?" 
				+ " WHERE id = ? ";
		try	{
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getName());
			ps.setString(2, user.getTel());
			ps.setString(3, user.getJob());
			ps.setString(4, user.getId());
			ps.executeUpdate();
		}
		catch (Exception e)	{
			System.out.println("record 수정 오류");
		}
		finally	{
			DBCon.close(con, ps, null);
		}
	}

	public void delete(String userid)	{
		String sql = "delete userinfo where id=?";
		try	{
			con = DBCon.getCon();
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			ps.executeUpdate();
		}
		catch (Exception e)	{
			System.out.println("record 삭제 오류");
		}
		finally	{
			DBCon.close(con, ps, null);
		}
	}
	
	
	
}

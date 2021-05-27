package JSPchapter03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import board.BoardDTO;
import board.DBCon;

public class indexDAO {

	public class BoardDAO {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		// 게시글 정보 가져오기
		public BoardDTO readDB(int bno)	{
			BoardDTO board = new BoardDTO();
			
			String sql = "select * from tbl_board where bno =?";
			try	{
				con = DBCon.getCon();
				ps = con.prepareStatement(sql);
				ps.setInt(1, bno);
				rs = ps.executeQuery();
				
				if (rs.next())	{
					board.setBno(rs.getInt("bno"));					// 번호
					board.setTitle(rs.getString("title"));			// 제목
					board.setContent(rs.getString("content"));		// 내용
					board.setWriter(rs.getString("writer"));		// 작성자
					board.setRegdate(rs.getDate("regdate"));		// 저장일자
					board.setUpdatedate(rs.getDate("updatedate"));	// 수정일자
				}
			}catch (Exception e)	{
				System.out.println("아이디 read 오류");
			}finally	{
				DBCon.close(con, ps, rs);
			}
			return board;
		}
	
}

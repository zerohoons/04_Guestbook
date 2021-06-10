package guset.book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	private static DAO dao = new DAO();
	public static DAO getInstance() {
		return dao;
	}
	
	private Connection getConnection(){
		try {
		Class.forName("oracle.jdbc.OracleDriver");
		String url =  "jdbc:oracle:thin:@192.168.0.14:1521:xe";
		String user = "c##Hoon";
		String password = "1234";
		
		conn = DriverManager.getConnection(url, user, password);
		return conn;
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public List<VO> getListup(){
		try {
			List<VO> list = new ArrayList<VO>();
			
			conn = getConnection();
			String sql = "select * from menu2 order by idx";
			
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setTitle(rs.getString("title"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setReg(rs.getString("reg"));
				vo.setWord(rs.getString("word"));
				list.add(vo);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return null;
	}
	
	public int getWord(VO vo) {
		try {
			int result = 0;
			
			conn = getConnection();
			String sql = "insert into menu2 values(update_menu2.nextval,?,?,?,?,sysdate,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getTitle());
			pstm.setString(3, vo.getEmail());
			pstm.setString(4, vo.getPw());
			pstm.setString(5, vo.getWord());
			pstm.setString(6,vo.getF_name());
			result = pstm.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	 return 0;
	}
	public VO getPage(String idx){
		try {
			VO vo = null;
			
			conn = getConnection();
			String sql = "select * from menu2 where idx=?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			
			rs = pstm.executeQuery();
			if(rs.next()) {
				vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString("name"));
				vo.setTitle(rs.getString("title"));
				vo.setEmail(rs.getString("email"));
				vo.setPw(rs.getString("pw"));
				vo.setReg(rs.getString("reg"));
				vo.setWord(rs.getString("word"));
			}
			
			return vo;
			
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			try {
				rs.close();
				pstm.close();
				conn.close();
			
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return null;
	}
	
	public int getUpdate(VO vo) {
		try {
			int result = 0;
			
			conn = getConnection();
			String sql = "update menu2 set name =?, title =?, email=?,word=? where idx = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getName());
			pstm.setString(2, vo.getTitle());
			pstm.setString(3, vo.getEmail());
			pstm.setString(4, vo.getWord());
			pstm.setString(5,vo.getIdx());
			result = pstm.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	 return 0;
	}


	public int getDelete(String idx) {
		try {
			int result = 0;
			
			conn = getConnection();
			String sql = "delete from menu2 where idx = ?";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, idx);
			result = pstm.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	 return 0;
	}
	
	public int Upload(VO vo) {
		try {
			int result = 0;
			
			conn = getConnection();
			String sql = "insert into upload values(?,?,?)";
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, vo.getF_name());
			pstm.setString(2, vo.getR_name());
			pstm.setString(3, vo.getIdx());
			result = pstm.executeUpdate();
			
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				pstm.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	 return 0;
	}
}

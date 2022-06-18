import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDao {
	private static UserDao instance = new UserDao();

	public static UserDao getInstance() {
		return instance;
	}

	private UserDao() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/hhl");
		return ds.getConnection();
	}

	public void insertArticle(UserDto article) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String names = article.getName();
		String ID = article.getID();
		String password = article.getPassword();
		String phone = article.getPhone();
		String sql = "";

		try {
			conn = getConnection();
			sql = "insert into 유저(아이디,비번,전번,이름) ";
			sql += "values (?,?,?,?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			pstmt.setString(2, password);
			pstmt.setString(3, phone);
			pstmt.setString(4, names);

			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception[insetArticle] : " + e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}

	}

	public List<UserDto> getUsers() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List articleList = null;
		String sql = "";
		try {
			conn = getConnection();
			sql = "select * from 유저";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				articleList = new ArrayList<UserDto>();
				do {
					UserDto article = new UserDto();
					article.setID(rs.getString("ID"));
					article.setPassword(rs.getString("password"));
					article.setPhone(rs.getString("phone"));
					article.setName(rs.getString("name"));
					articleList.add(article);
				} while (rs.next());
			}
		} catch (Exception e) {
			System.out.print("Exception[getUsers] :" + e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			;
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			;
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
			;
		}
		return articleList;

	}

	public int getUserCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select count(*) from 유저");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.print("Exception[getUserCount] :" + e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			;
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			;
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
			;
		}
		return count;
	}

	public UserDto getArticle(String ID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserDto article = null;
		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from 유저 where 아이디=?");
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				article = new UserDto();
				article.setID(rs.getString("ID"));
				article.setPassword(rs.getString("password"));
				article.setPhone(rs.getString("phone"));
				article.setName(rs.getString("name"));

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}
		return article;
	}

	public int updateUser(UserDto article, String ID, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int updateCount = 0;

		try {
			conn = getConnection();
			String sql = "select * from 유저 where 아이디=? and 비번=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getID());
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next()) {

				sql = "update 유저 set 비번=?,이름=? ,전번=?";
				sql += "where 아이디=? and 비번=?";
				pstmt = conn.prepareStatement(sql);
				// System.out.println("되냐?");
				pstmt.setString(1, article.getPassword());
				pstmt.setString(2, article.getName());
				pstmt.setString(3, article.getPhone());
				pstmt.setString(4, ID);
				pstmt.setString(5, password);
				updateCount = pstmt.executeUpdate();
				// System.out.println("된Da");

			}
		} catch (Exception e) {
			System.out.println("Exception[updateArticle] : " + e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}

			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}
		return updateCount;
	}

	public int deleteUser(String ID, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int deleteCount = 0;

		try {
			conn = getConnection();
			String sql = "select * from 유저 where 유저=?,비번=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				sql = "delete from 유저 where 아이디=? and 비번=?";
				pstmt = conn.prepareStatement(sql);
				// System.out.println("되냐?");
				pstmt.setString(1, ID);
				pstmt.setString(2, passwd);
				deleteCount = pstmt.executeUpdate();
				// System.out.println("된Da");

			}
		} catch (Exception e) {
			System.out.println("Exception[deleteArticle] : " + e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (Exception e) {
				}

			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}

		}
		return deleteCount;
	}
}

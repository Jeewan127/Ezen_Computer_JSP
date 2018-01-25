package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Category;
import beans.Goods;

public class Dao {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "shop";
	String upw = "1234";
	
	public Dao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Category> getCategoryList() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Category> items = new ArrayList<>();
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from Category");	
			while(rs.next()) {
				Integer id = rs.getInt("id");
				String category_name = rs.getString("category_name");
				
				Category item = new Category(id,category_name);
				items.add(item);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}	
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return items;
	}
	
	public Category getCategoryInfo(int categoryId) {
		Category category=null;
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from Category where id=" + categoryId);	
			if(rs.next()) {
				Integer id = rs.getInt("id");
				String category_name = rs.getString("category_name");
								
				category = new Category(id,category_name);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}	
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return category;
	}
	
	public ArrayList<Goods> getGoodsList(int categoryId) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Goods> items = new ArrayList<>();
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from Goods where category_id=" + categoryId);	
			while(rs.next()) {
				Integer id = rs.getInt("id");
				String goods_name = rs.getString("goods_name");
				Integer price = rs.getInt("price");
				Integer category_id = rs.getInt("category_id");
				
				Goods item = new Goods(id,goods_name,price,category_id);
				items.add(item);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}	
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return items;
	}
	
	public void addCategory(String cateName) {
		Connection con = null;
		Statement stmt = null;
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			stmt.executeUpdate(
					"insert into category values (CATEGORY_SEQ.NEXTVAL,'" + cateName+"')");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public boolean isExistCategory(String cateName) {
		boolean res = true;
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			rs = stmt.executeQuery("select COUNT(*) from Category where CATEGORY_NAME='" + cateName + "'");
			if (rs.next()) {
				if (rs.getInt(1) > 0) {
					res = true;
				} else {
					res = false;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}	
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return res;
	}
	
	public void delCategory(int category_id) {
		Connection con = null;
		Statement stmt = null;
		
		try {
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			stmt.executeUpdate(
					"delete from category where id=" + category_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}	
				if (con != null) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}

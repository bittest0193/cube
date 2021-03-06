package com.cube.util.db;

import java.sql.*;

public class DBClose {

	
	public synchronized static void close(Connection conn, Statement stmt){
		
		try {
			
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public synchronized static void close(Connection conn, Statement stmt, ResultSet rs){//오버로딩
		
		try {
			
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public synchronized static void close(Connection conn, PreparedStatement pstmt){
		
		try {
			
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public synchronized static void close(Connection conn, PreparedStatement pstmt, ResultSet rs){//오버로딩
		
		try {
			
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}

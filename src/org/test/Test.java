package org.test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import org.util.GetConnection;


public class Test {
	Connection con ;
	Statement st;
	ResultSet rs;
	PreparedStatement pstmt;
	//��ȫ��
	public List<Dept> getDept() throws Exception{
		List<Dept> list = new ArrayList<Dept>();
		con = GetConnection.getOracleConnection();
		 st = con.createStatement();
		 rs =  st.executeQuery("select * from dept1");
		while(rs.next()){
			Dept dept = new Dept();
				int deptno = rs.getInt("deptno");
				String dname = rs.getString("dname");
				String loc = rs.getString("loc");
				dept.setDeptno(deptno);
				dept.setDname(dname);
				dept.setLoc(loc);
				list.add(dept);
				
	}


	rs.close();
	st.close();
	con.close();
	
	return list;
	
	}
	
	//ɾ��
	public void delDeptByDeptno(int deptno) throws ClassNotFoundException, SQLException{
		con = GetConnection.getOracleConnection();
		String sql = "delete from dept1 where deptno=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, deptno);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
		
	}
	
	public void addDept(Dept dept) throws ClassNotFoundException, SQLException{
		con = GetConnection.getOracleConnection();
		String sql = "insert into dept1 values(?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, dept.getDeptno());
		pstmt.setString(2, dept.getDname());
		pstmt.setString(3, dept.getLoc());
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
	}
	
	
	public Dept queryDeptByDeptno(int Deptno){
		String sql = "select * from dept1 where deptno=?";
		Dept dept = new Dept();
		try {
			
			con = GetConnection.getOracleConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Deptno);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dept.setDeptno(rs.getInt("deptno"));
				dept.setDname(rs.getString("dname"));
				dept.setLoc(rs.getString("loc"));
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}

		}
		return dept;
	}
	
	public void updateDeptById(Dept newDept,int oldDeptno) throws ClassNotFoundException, SQLException{
		String sql = "update dept1 set deptno=?,dname=?,loc=? where deptno=?";
		con = GetConnection.getOracleConnection();
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, newDept.getDeptno());
		pstmt.setString(2,newDept.getDname());
		pstmt.setString(3,newDept.getLoc());
		pstmt.setInt(4, oldDeptno);
		pstmt.executeUpdate();
		pstmt.close();
		con.close();
	}	
	
	
	public List<Dept> queryDeptLikeDname(String dname){
		List<Dept>  list= new ArrayList<Dept>();
		
		String sql = "select * from dept1 where upper(dname) like upper(?)";
		try {
			con = GetConnection.getOracleConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+dname+"%");//ģ����ѯ
			rs  = pstmt.executeQuery();
			while(rs.next()){
				Dept dept = new Dept();
				dept.setDeptno(rs.getInt("deptno"));
				dept.setDname(rs.getString("dname"));
				dept.setLoc(rs.getString("loc"));
				list.add(dept);
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return list;
	}
	
	//��ҳȡ��Dept���еļ�¼
	//��ȡ��ȫ�� �ٷ�ҳ
	public List<Dept> queryDeptByPage(List<Dept> list,int page,int count){
		
			List<Dept> listPage  = new ArrayList<Dept>();
			//page��ǰҳ   countÿҳ������    total��ҳ��
			//total��ҳ��  �����������count���಻Ϊ0,˵�������count����������totalΪ������/count +1
			int total = list.size()%count>0?(list.size()/count+1):(list.size()/count);
			if(page<1){
				page=1;//��Ϊ��ҳ�ӵ�һҳ��ʼ�������pageС��1 ��page = 1
			}else if(page>total){
				page=total;//��Ϊ��ҳ�����ܴ������һҳ�������page������ҳ�� ��page = ��ҳ��
			};
			
			int start = (page-1)*count;
			int end = page==total?list.size():page*count;
			
			for(int i = start;i<end;i++){
				listPage.add(list.get(i));
			}
			
		return listPage;
	}
		public static void main(String[] args) {
				System.out.println(Math.ceil(1.9));
		}
}

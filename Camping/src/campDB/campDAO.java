package campDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class campDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// connection
	public void getConnection() {
		try {
			InitialContext initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
			conn = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// join
	public void insert(campinfo info) {
		getConnection();

		String sql = "insert into camp_info values(?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, info.getId());
			pstmt.setString(2, info.getPw());
			pstmt.setString(3, info.getEmail());
			pstmt.setString(4, info.getTel());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//id check
	public boolean confirmID(String id) {
		getConnection();
		boolean result = false;
		try {
			String sql = "select id from camp_info where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// password check
	public String pwcheck(String id) {
		getConnection();

		String pass = "";

		try {
			String sql = "select password from camp_info where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pass = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return pass;
	}

	// userInfo
	public campinfo userinfo(String id) {
		campinfo bean = new campinfo();
		getConnection();

		String sql = "select * from camp_info where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPw(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
			}
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bean;
	}

	// userinfo update
	public void UpdatePro(campinfo info) {
		getConnection();

		try {
			String sql = "update camp_info set id = ?, password = ?, email = ?, tel = ? where id = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, info.getId());
			pstmt.setString(2, info.getPw());
			pstmt.setString(3, info.getEmail());
			pstmt.setString(4, info.getTel());
			pstmt.setString(5, info.getId());

			pstmt.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// roomCheck
	public int roomCheck(String rank, String startdate) {
		getConnection();

		int num = 0;

		try {
			String sql = "select count(*) from camp_reserve where rank = ? and startdate=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rank);
			pstmt.setString(2, startdate);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				num = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}

	// insert reservation
	public void reservation(campreserve reserve) {
		getConnection();

		String sql = "insert into camp_reserve values(camp_seq.nextval,?,?,?,?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reserve.getId());
			pstmt.setString(2, reserve.getRank());
			pstmt.setString(3, reserve.getStartdate());
			pstmt.setString(4, reserve.getEnddate());
			pstmt.setString(5, reserve.getBbq());
			pstmt.setString(6, reserve.getUsernum());
			pstmt.setString(7, reserve.getContent());
			pstmt.setInt(8, reserve.getPrice());

			pstmt.executeUpdate();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// reservation output
	public Vector<campreserve> AllReserve(String id) {
		Vector<campreserve> vec = new Vector<campreserve>();

		try {
			getConnection();
			String sql = "select * from camp_reserve where id=? order by startdate";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				campreserve bean = new campreserve();
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setRank(rs.getString(3));
				bean.setStartdate(rs.getString(4));
				bean.setEnddate(rs.getString(5));
				bean.setBbq(rs.getString(6));
				bean.setUsernum(rs.getString(7));
				bean.setContent(rs.getString(8));
				bean.setPrice(rs.getInt(9));

				vec.add(bean);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vec;
	}

	// reservation delete
	public void reserveDel(String num) {
		getConnection();

		try {
			String sql = "delete from camp_reserve where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);

			pstmt.executeQuery();

			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public void pastDelete(String id) {
		getConnection();

		try {
			String sql = "delete from camp_reserve where id = ? and startdate < sysdate";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			pstmt.executeQuery();

			conn.close();
		} catch (Exception e) {
		}
	}

	// board
	// boardList count
	public int boardCount() {
		getConnection();

		int count = 0;
		try {
			String sql = "select count(*) from camp_board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1); // 전체게시글 수
			}
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}

	// All board list output
	public Vector<campboard> AllBoardList(int start, int end) {

		Vector<campboard> vec = new Vector<campboard>();

		getConnection();

		try {
			String sql = "select * from (select A.*, Rownum Rnum from(select * from camp_board order by ref desc, re_step asc)A) where Rnum >= ? and Rnum <=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				campboard cb = new campboard();
				cb.setNum(rs.getInt(1));// sequence number
				cb.setId(rs.getString(2));
				cb.setSubject(rs.getString(3));
				cb.setReg_date(rs.getDate(4).toString());
				cb.setRef(rs.getInt(5));
				cb.setRe_step(rs.getInt(6));
				cb.setRe_level(rs.getInt(7));
				cb.setReadCount(rs.getInt(8));
				cb.setContent(rs.getString(9));
				vec.add(cb);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vec;
	}

	// search result List
	public Vector<campboard> SearchBoard(String item, String searchString) {
		Vector<campboard> vec = new Vector<campboard>();

		try {
			getConnection();
			String sql = "select * from camp_board where " + item + " like '%" + searchString
					+ "%' order by ref desc, re_step asc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				campboard cb = new campboard();
				cb.setNum(rs.getInt(1));// sequence number
				cb.setId(rs.getString(2));
				cb.setSubject(rs.getString(3));
				cb.setReg_date(rs.getDate(4).toString());
				cb.setRef(rs.getInt(5));
				cb.setRe_step(rs.getInt(6));
				cb.setRe_level(rs.getInt(7));
				cb.setReadCount(rs.getInt(8));
				cb.setContent(rs.getString(9));
				vec.add(cb);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vec;
	}

	// Board insert List
	public void insertBoard(campboard cr) throws ClassNotFoundException, SQLException {
		getConnection();

		int ref = 0;
		int re_step = 1;
		int re_level = 1;
		String refsql = "select max(ref) from camp_board";
		pstmt = conn.prepareStatement(refsql);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			ref = rs.getInt(1) + 1; // 글그룹 쿼리르
		}
		String sql = "insert into camp_board values(camp_board_seq.nextval,?,?,sysdate,?,?,?,0,?)";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, cr.getId());
		pstmt.setString(2, cr.getSubject());
		pstmt.setInt(3, ref);
		pstmt.setInt(4, re_step);
		pstmt.setInt(5, re_level);
		pstmt.setString(6, cr.getContent());

		pstmt.executeUpdate();
		conn.close();
	}

	// OneBoardInfo output
	public campboard OneBoardInfo(int num) throws SQLException, ClassNotFoundException {
		campboard cb = new campboard();
		getConnection();

		String readsql = "update camp_board set readcount = readcount + 1 where num = ?";
		pstmt = conn.prepareStatement(readsql);
		pstmt.setInt(1, num);
		pstmt.executeUpdate();

		String sql = "select * from camp_board where num = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			cb.setNum(rs.getInt(1));// sequence number
			cb.setId(rs.getString(2));
			cb.setSubject(rs.getString(3));
			cb.setReg_date(rs.getDate(4).toString());
			cb.setRef(rs.getInt(5));
			cb.setRe_step(rs.getInt(6));
			cb.setRe_level(rs.getInt(7));
			cb.setReadCount(rs.getInt(8));
			cb.setContent(rs.getString(9));
		}
		conn.close();
		return cb;
	}

	public Vector<campboard> refCheck(int num) throws SQLException, ClassNotFoundException {
		Vector<campboard> v = new Vector<campboard>();
		getConnection();

		String sql = "select * from camp_board where ref = (select ref from camp_board where num = ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			campboard cb = new campboard();
			cb.setNum(rs.getInt(1));// sequence number
			cb.setId(rs.getString(2));
			cb.setSubject(rs.getString(3));
			cb.setReg_date(rs.getDate(4).toString());
			cb.setRef(rs.getInt(5));
			cb.setRe_step(rs.getInt(6));
			cb.setRe_level(rs.getInt(7));
			cb.setReadCount(rs.getInt(8));
			cb.setContent(rs.getString(9));
			v.add(cb);
		}
		conn.close();
		return v;
	}

	// boardList review
	public void boardReWrite(campboard Bean) {
		int ref = Bean.getRef();
		int re_step = Bean.getRe_step();
		int re_level = Bean.getRe_level();

		getConnection();

		try {
			// 부모 글 보다 더 큰 re_level의 값을 모두 1씩 증가
			String levelsql = "update board set re_level = re_level + 1 where ref = ? and re_level > ?";
			pstmt = conn.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			pstmt.executeUpdate();
			// 답변글 데이터 저장
			String sql = "insert into camp_board values(camp_board_seq.nextval,?,?,sysdate,?,?,?,0,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, Bean.getId());
			pstmt.setString(2, Bean.getSubject());
			pstmt.setInt(3, ref);
			pstmt.setInt(4, re_step + 1);
			pstmt.setInt(5, re_level + 1);
			pstmt.setString(6, Bean.getContent());

			pstmt.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public campboard inquireOne(int num) {
		getConnection();
		campboard cb = new campboard();
		try {
			String sql = "select * from camp_board where num=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				cb.setNum(rs.getInt(1));// sequence number
				cb.setId(rs.getString(2));
				cb.setSubject(rs.getString(3));
				cb.setReg_date(rs.getDate(4).toString());
				cb.setRef(rs.getInt(5));
				cb.setRe_step(rs.getInt(6));
				cb.setRe_level(rs.getInt(7));
				cb.setReadCount(rs.getInt(8));
				cb.setContent(rs.getString(9));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cb;
	}

	// update
	public campboard inquireUpdate(campboard cb) {
		getConnection();

		try {
			String sql = "update camp_board set subject = ?, content = ? where num = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cb.getSubject());
			pstmt.setString(2, cb.getContent());
			pstmt.setInt(3, cb.getNum());

			pstmt.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String PassCheck(int num) {
		getConnection();

		String pass = "";

		try {
			String sql = "select password from camp_board natural join camp_info where camp_board.num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pass = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return pass;
	}

	public void inquireDelete(int num) {
		getConnection();

		try {
			String sql = "Delete from camp_board where ref = (select ref from camp_board where num = ?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// All board list output
	public Vector<campNQ> AllNQList(String op) {

		Vector<campNQ> vec = new Vector<campNQ>();

		getConnection();

		try {
			String sql = "select * from camp_nq where op = ? order by REG_DATE desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, op);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				campNQ cnq = new campNQ();
				cnq.setNum(rs.getInt(1));// sequence number
				cnq.setSubject(rs.getString(2));
				cnq.setDate(rs.getDate(3).toString());
				cnq.setContent(rs.getString(4));
				cnq.setOp(rs.getString(5));
				vec.add(cnq);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vec;
	}

	// Board insert List
	public void insertNQ(campNQ nq) throws ClassNotFoundException, SQLException {
		getConnection();

		String sql = "insert into camp_nq values (camp_nq_seq.nextval, ?, sysdate, ?, ?)";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, nq.getSubject());
		pstmt.setString(2, nq.getContent());
		pstmt.setString(3, nq.getOp());

		pstmt.executeUpdate();
		conn.close();
	}

	public campNQ nqOne(int num, String op) {
		getConnection();
		campNQ cnq = new campNQ();
		try {
			String sql = "select * from camp_nq where num=? and op = ?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, op);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				cnq.setNum(rs.getInt(1));// sequence number
				cnq.setSubject(rs.getString(2));
				cnq.setDate(rs.getDate(3).toString());
				cnq.setContent(rs.getString(4));
				cnq.setOp(rs.getString(5));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnq;
	}

	// update
	public campNQ nqUpdate(campNQ cb) {
		getConnection();

		try {
			String sql = "update camp_nq set subject = ?, content = ? where num = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cb.getSubject());
			pstmt.setString(2, cb.getContent());
			pstmt.setInt(3, cb.getNum());

			pstmt.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void nqDelete(int num) {
		getConnection();

		try {
			String sql = "Delete from camp_nq where num = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, num);

			pstmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

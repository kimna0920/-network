<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="DBPKG.Util" %>
  <%@page import="java.sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<p><h2>참가자 목록 조회</h2></p>
		<table border="1">
			<tr>
				<td>참가번호</td><td>참가자이름</td><td>생년월일</td>
				<td>성별</td><td>특기</td><td>소속사</td>
			</tr>
			<tr>
				<%
					try {
						Connection conn = Util.getconnection();
						String sql = "SELECT * FROM tbl_artist_201905 ORDER BY artist_id";
						PrepareStatement pstmt = conn.prepareStatement(sql);
						ResultSet rs = pstmt.excuteQuery();
						while(rs.next()){
				%>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
			</tr>
			<%
						}
					} catch(Exception e) {
						e.printStackTrace();
					}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
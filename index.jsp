<%@page import="java.util.*,Exam.Dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Film> list=(List<Film>)request.getAttribute("films");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
欢迎来到登<%session.getAttribute("name"); %>login
<form action="/Servlet" method="post">
<button onclick="geFilm()">查詢</button>
<table cellspacing="0" class="tablesorter"> 
					<thead> 
						<tr> 
							<th width="10%" class="tc">影片编号</th> 
							<th width="20%">影片語言</th> 
						</tr> 
					</thead> 
					<tbody> 
					<%
						for(Film li : list){
					%>
						<tr>
							<td class="tc"><%=li.getFilmId() %></td>
							<td><%=li.getOriginalLanguageId() %></td>
						</tr>
					<%
						}
					%>
					</tbody> 
				</table>

<input type="submit" value="提交">

</form>
</body>
</html>
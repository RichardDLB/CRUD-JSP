<%@page import="ar.org.centro8.curso.especialidad.aplicaciones.web.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>
<%
	String buscar="";
	if(request.getParameter("buscar")!=null){
		buscar=request.getParameter("buscar");
	}
	try(ResultSet ss=Connector
								.getConnection()
								.createStatement()
								.executeQuery("select * from cursos where titulo like '%"+buscar+"%'")){
		while(ss.next()){
			out.print("<tr>");
			out.print("<th>"+ss.getInt("id")+"</th>");
			out.print("<td>"+ss.getString("titulo")+"</td>");
			out.print("<td>"+ss.getString("profesor")+"</td>");
			out.print("<td>"+ss.getString("dia")+"</td>");
			out.print("<td>"+ss.getString("turno")+"</td>");
			out.print("</tr>");
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>
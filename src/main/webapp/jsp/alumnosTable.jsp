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
								.executeQuery("SELECT alumnos.*, cursos.titulo FROM alumnos INNER JOIN cursos ON alumnos.idcurso = cursos.id WHERE alumnos.nombre LIKE '%" + buscar + "%'")){
		while(ss.next()){
			out.print("<tr>");
			out.print("<th>"+ss.getInt("id")+"</th>");
			out.print("<td>"+ss.getString("nombre")+"</td>");
			out.print("<td>"+ss.getString("apellido")+"</td>");
			out.print("<td>"+ss.getString("edad")+"</td>");
			out.print("<td>"+ss.getString("titulo")+"</td>");
			out.print("</tr>");
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>
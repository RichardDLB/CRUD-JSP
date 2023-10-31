<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="ar.org.centro8.curso.especialidad.aplicaciones.web.connectors.Connector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
try (ResultSet rs = Connector.getConnection().createStatement()
		.executeQuery("SELECT id, titulo FROM cursos")) {
	while (rs.next()) {
		int idCurso = rs.getInt("id");
		String tituloCurso = rs.getString("titulo");
		%>
		<option value="<%= idCurso %>"><%= tituloCurso %></option>
		<%
	}
} catch (Exception e) {
	System.out.println(e);
}
%>
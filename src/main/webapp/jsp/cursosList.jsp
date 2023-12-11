<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="ar.org.centro8.curso.especialidad.aplicaciones.web.connectors.Connector" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
try (ResultSet rs = Connector.getConnection().createStatement()
		.executeQuery("SELECT id, titulo, profesor, dia, turno FROM cursos")) {
	while (rs.next()) {
		int idCurso = rs.getInt("id");
		String tituloCurso = rs.getString("titulo");
		String profesorCurso = rs.getString("profesor");
		String diaCurso = rs.getString("dia");
		String turnoCurso = rs.getString("turno");
		%>
		<option value="<%= idCurso %>"><%= tituloCurso %> , <%= profesorCurso %> , <%= diaCurso %> , <%= turnoCurso %></option>
		<%
	}
} catch (Exception e) {
	System.out.println(e);
}
%>
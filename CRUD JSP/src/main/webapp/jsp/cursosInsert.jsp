<%@page import="java.sql.ResultSet"%>
<%@page
	import="ar.org.centro8.curso.especialidad.aplicaciones.web.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%
	String titulo = request.getParameter("titulo");
	String profesor = request.getParameter("profesor");
	String dia = request.getParameter("dia");
	String turno = request.getParameter("turno");
	if (titulo != null && profesor != null) {
		try (PreparedStatement ps = Connector.getConnection().prepareStatement(
		"insert into cursos (titulo,profesor,dia,turno) values (?,?,?,?)",
		PreparedStatement.RETURN_GENERATED_KEYS)) {
			ps.setString(1, titulo);
			ps.setString(2, profesor);
			ps.setString(3, dia);
			ps.setString(4, turno);
			ps.execute();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next())
		out.print("Se guardo un curso id: " + rs.getInt(1));
			else
		out.print("No se pudo guardar el curso!");
		} catch (Exception e) {
			System.out.println(e);
			out.print("No se pudo guardar el curso!");
		}
	}
%>
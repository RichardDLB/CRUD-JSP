<%@page import="java.sql.ResultSet" %>
  <%@page import="java.sql.PreparedStatement" %>
    <%@page import="ar.org.centro8.curso.especialidad.aplicaciones.web.connectors.Connector" %>
      <%@page import="java.sql.Connection" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
          <!DOCTYPE html>
          <html>

          <head>
            <%@ include file="/jsp/head.jsp" %>
          </head>

          <body onload="startTime()">

            <div class="container-lg bg-secondary-subtle">

              <%@ include file="/jsp/menu.jsp" %>

                <h1 class="text-center text-primary bg-white">Mantenimiento de Alumno</h1>
                <form>
                  <div class="p-2 m-1">
                    <div class="mb-3 row">
                      <label for="nombre" class="col-sm-3 col-form-label text-primary">Nombre</label>
                      <div class="col-sm-9">
                        <input type="texto" class="form-control text-primary" required minlength="3" maxlength="20"
                          name="nombre" id="nombre">
                      </div>
                    </div>
                  </div>

                  <div class="p-2 m-1">
                    <div class="mb-3 row">
                      <label for="apellido" class="col-sm-3 col-form-label text-primary">Apellido</label>
                      <div class="col-sm-9">
                        <input type="texto" class="form-control text-primary" required minlength="3" maxlength="20"
                          name="apellido" id="apellido">
                      </div>
                    </div>
                  </div>

                  <div class="p-2 m-1">
                    <div class="mb-3 row">
                      <label for="edad" class="col-sm-3 col-form-label text-primary">Edad</label>
                      <div class="col-sm-9">
                        <input type="texto" class="form-control text-primary" required name="edad" id="edad">
                      </div>
                    </div>
                  </div>

                  <div class="p-2 m-1">
                    <div class="mb-3 row">
                      <label for="idCurso" class="col-sm-3 col-form-label text-primary">Identificador Cursos</label>
                      <div class="col-sm-9">
                        <select class="form-select text-primary" name="idCurso" id="idCurso">
                          <%@ include file="/jsp/cursosList.jsp" %>
                      </select>
                      </div>
                    </div>
                  </div>

                  <div class="mb-3 row botones">
                    <button type="reset" class="btn btn-outline-danger col-sm-3 m-2">Borrar</button>
                    <button type="submit" class="btn btn-outline-success col-sm-3 m-2">Guardar</button>
                  </div>
                  <div class="mb-3 row">
                    <label for="informacion" class="col-sm-2 col-form-label text-primary">Información</label>
                    <div class="col-sm-10">
                      <input type="text" readonly class="form-control text-primary" id="informacion"
                        value='<%@ include file="/jsp/alumnosInsert.jsp" %>'>
                    </div>
                  </div>
                </form>
                <div>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Edad</th>
                        <th scope="col">idCurso</th>
                      </tr>
                    </thead>
                    <tbody>
                      <%@ include file="/jsp/alumnosTable.jsp" %>
                    </tbody>
                  </table>
                </div>


            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
              crossorigin="anonymous">

              </script>
          </body>

          </html>
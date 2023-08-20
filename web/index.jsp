<%-- 
    Document   : index
    Created on : 16-08-2023, 19:49:27
    Author     : Hp
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Trabajadores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    
    <body class="bg-success"> <br><br> 

     <%   
        Connection con = null; 
        Statement st = null;
        ResultSet rs = null;
       %>
     <div class="container border bg-light border rounded"> 
            <div class="row"> 
                <div class="col-12 p-5 text-center">               
                   <h1 class="bg-success text-light  border rounded">REGISTRO DE DESVINCULACIONES</h1>
                </div>
            </div>
              
        <div class="row"> 
          <div class="col-12 text-center"> 
            <table class="table table-bordered border-success">
                   <caption>Datos del trabajador - Departamento RRHH</caption>
                   <thead>
                      <tr>
                          <th scope="col">ID</th>
                          <th scope="col">NOMBRE</th>
                          <th scope="col">SUELDO</th>
                          <th scope="col">DEPARTAMENTO</th>
                          <th scope="col">TELEFONO</th>
                     </tr>
                  </thead>
            <tbody>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_rrhh?user=root");
                    st = con.createStatement();
                    rs = st.executeQuery("SELECT * FROM tbl_trabajadores");
                   
                    while (rs.next()){
                    %>
                <tr>
                    <th scope="row"><%= rs.getInt("id_trabajador")%></th>
                    <td><%= rs.getString("nombre_trabajador")%></td>    
                    <td><%= rs.getInt("sueldo_trabajador")%></td>
                    <td><%= rs.getString("departamento_trabajador")%></td>
                    <td><%= rs.getInt("contacto_trabajador")%></td>
                </tr>
                <% } 
                %>
            </tbody>
         </table>
       </div>
     </div>   
  </div>
             
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <body/>
</html>

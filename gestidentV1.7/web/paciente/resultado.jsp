<%-- 
    Document   : resultado
    Created on : 09/01/2016, 19:17:47
    Author     : stand
--%>

<%@page import="com.ec.controller.PacienteController"%>
<%@page import="com.ec.entidades.Paciente"%>
<%@page import="com.dao.pacienteControl"%>
<%@page import="modelo.CorreoContraControl"%>
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            pacienteControl pa= new pacienteControl();
            Email email = new Email();
            String de = "gestident.sw2@gmail.com";
            String clave = "pichones";
            String para = pa.getCorreo();
            String mensaje = "Bienvenido al Sistema GestiDent"
                    + "\nUsted puede ingresar al sistema mediante su numero de Cedula"
                    + "\nY su contrasenia: "+pa.getPassword();//+request.getParameter("mensaje");
            String asunto = "Bienvenido al Sistema Gestident";
            
            boolean resultado = email.enviarCorreo(de, clave, para, mensaje, asunto);
            if (resultado){
                out.print("CORREO ENVIADO BIEN"+ "\n\n"+"<a href='index.xhtml'>Volver al index</a>");
                
            } else {
                out.print("CORREO ENVIADO MAL KE VRG"+ "\n\n"+"<a href='index.xhtml'>Volver al index</a>");
            }
        %>
    </body>
</html>

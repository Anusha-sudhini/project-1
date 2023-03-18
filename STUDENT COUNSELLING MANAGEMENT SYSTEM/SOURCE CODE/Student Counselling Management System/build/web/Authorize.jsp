<%-- 
    Document   : Authorize
    Created on : Apr 26, 2018, 6:26:43 PM
    Author     : Acer
--%>

<%@page import="connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>




<%try{
    String id=request.getParameter("id");
Connection con=DbConnection.getConnection();
Statement st=con.createStatement();
int i=st.executeUpdate("update student set status='Authorized' where id='"+id+"'");
if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Authorized Successfully");
        window.location="ViewStudent.jsp";
        </script>
    <%
}else{
%>
    <script type="text/javascript">
        window.alert("Authorization Failed");
        window.location="ViewStudent.jsp";
        </script>
    <%
}


}catch(Exception e){
    out.println(e);
}



%>
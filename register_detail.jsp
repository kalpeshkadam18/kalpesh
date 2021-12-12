<%-- 
    Document   : register_detail
    Created on : Nov 28, 2021, 5:48:35 AM
    Author     : this pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %> 
    <%
            String Fn=request.getParameter("F_name");
            String Mn=request.getParameter("M_name");
            String Ln=request.getParameter("L_name");
            String dob=request.getParameter("dob");
            String gender=request.getParameter("gender");
            String addr=request.getParameter("addr");
            String mob=request.getParameter("mob");
            String pid=request.getParameter("pid");
            String course=request.getParameter("course");
            String email=request.getParameter("email");
            
    try{
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/regis","root","");
        Statement st=con.createStatement();
st.executeUpdate("insert into register(F_name,M_name,L_name,dob,gender,addr,mob,pid,course,email) values"
+"('"+Fn+"','"+Mn+"','"+Ln+"','"+dob+"','"+gender+"','"+addr+"','"+mob+"','"+pid+"','"+course+"','"+email+"')");
out.println("REGISTERED SUCCESSFULLY");    
    }catch(Exception e){
        out.println(e);
    }             
            %>
    

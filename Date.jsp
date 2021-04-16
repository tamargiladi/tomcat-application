<%@page import="java.net.ConnectException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.HttpURLConnection" %>
    <%@ page import="java.net.URL" %>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.net.HttpURLConnection" %>
    <%@ page import="java.net.URL" %>
    <%@ page import="java.net.Authenticator" %>
    <%@ page import="java.net.PasswordAuthentication" %>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="120">
<title>URL Monitor</title>
</head>
<body>
<%


String monitor1="http://www.serverliving.com/";
HttpURLConnection rmonitor1 = ( HttpURLConnection ) new URL( monitor1 ).openConnection();

String bg="";
SimpleDateFormat time_formatter = new SimpleDateFormat("dd-MM-yyyy::HH:mm");
String current_time_str = time_formatter.format(System.currentTimeMillis());
out.print("<center/><h3>Current Time: "+current_time_str+"</h3>");
out.print("<table align=center border=1>");
out.print("<tr><th>APPLICATION</th><th>URL</th><th>STATUS</th></tr>");

try{
out.print("<tr><td>My Application Name</td>");
out.print("<td>"+monitor1+"</td>");
if(rmonitor1.getResponseCode() == 200){bg="#66ccff";}else{bg="#ff6600";}
out.print("<td bgcolor="+bg+">"+rmonitor1.getResponseCode()+"</td></tr>");
} catch (Exception e) {
        out.print("<td bgcolor=#ff6600>Connection Failed</td>");
}

%>
</body>
</html>

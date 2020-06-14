<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String uname=(String)session.getAttribute("username"); %>
<!DOCTYPE html>
 <% 
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("index.jsp");
            }
        
  %>
  
<html>
    <head>
            <title>Welcome Admin</title>
            <link rel="stylesheet" href="Style/style.css">
    </head>
    <body>
            <div class="colorcontainer"></div>
                <div class="formcontainer adminform">
                        <div class="heading" align="center">VChat</div>
                        <div class="formheading">Welcome <%=uname%>!</div>
                        <p>Delete any member you want to delete.</p>
                        <form action="index.jsp">
                                <table>
                                        <tr>
                                                <th>User ID</th>
                                                <th>Email</th>
                                                <th>Delete User</th>
                                        </tr>
                                        <tr>
                                                <td>User1</td>
                                                <td>user1@gmail.com</td>
                                                <td><div class="deletebutton" onclick="deletefunnction();"><div class="deletebtntxt">Delete</div></div></td>
                                        </tr>
                                        <tr>
                                                <td>User2</td>
                                                <td>user2@gmail.com</td>
                                                <td><div class="deletebutton" onclick="deletefunnction();"><div class="deletebtntxt">Delete</div></div></td>
                                        </tr>
                                        <tr>
                                                <td>User3</td>
                                                <td>user3@gmail.com</td>
                                                <td><div class="deletebutton" onclick="deletefunnction();"><div class="deletebtntxt">Delete</div></div></td>
                                        </tr>
                                </table>
                                <div class="buttoncontainer">
                                        <button type="submit" class="signinbutton" value="Logout">
                                                <div class="btntxt">Logout</div>
                                        </button>
                                </div>
                        </form>
                </div>
                <div class="foot">Welcome to the official VChat web-client.</div>
    </body>
</html>

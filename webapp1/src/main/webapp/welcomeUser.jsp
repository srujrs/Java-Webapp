
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.data.message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="stylesheet" href="Style/main.css">
  </head>
  <body>
    <div class="cont">
      <div class="row no-gutters">
        <div class="col-md-12 col-lg-1 border-right">
          <div class="personal-panel">
              <img src="Style/Tom.jpg" alt="" class="profile-image">
              <h6 class="profile-name">${uname}</h6>
              <ul class="list-unstyled" style="margin:20px auto;">
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">chat</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">person</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">folder</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">settings</i></li>
              </ul>
          </div>
        </div>
        <div class="col-md-6 col-lg-4 border-right">
          <div class="contacts-panel">
            <div class="search-box">
              <input type="text" name="contacts" value="" placeholder="Search">
              <i class="material-icons" style="color: gray;vertical-align: middle;">search</i>
            </div>
              <div class="friend-box" id="groups">
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">T</div>
                  <div class="text">
                    <h6 class="m-0">Tony Stark</h6>
                    <p>I am Iron Man...</p>
                  </div>
                  <div class="time">13:20</div>
                </div>
          </div>
              <script>
                  let element = document.createElement("div");
                    element.innerHTML = "<div class='friend-drawer' onclick='openchat()'><div class='profile-image'>T</div><div class='text'><h6 class='m-0'>" + 
                                    <% List<message> messages = (ArrayList<message>)request.getAttribute("messages");
                                    out.print(messages.get(0).getGroupName());
                          %> + "</h6> <p>" + <% 
                                    out.print(messages.get(messages.size() - 1).getContent());
                          %> + "</p></div><div class='time'>"+ <% 
                                    out.print(messages.get(messages.size() - 1).getTimeStamp());
                          %> +
                  "</div></div>";
                  let parent = document.getElementById("groups");
                parent.appendChild(element);
            </script>
        </div>
        <div class="col-md-6 col-lg-7 border-right">
          <div class="chat-panel">
              <h4>Chat</h4>
              <div class="underline"></div>
              <div class="chat-box">
                <div class="message left">hello...</div>
                <div class="message right">hey...how are you..?</div>
                <div class="message left">I am great wby..?</div>
              </div>
              <div class="message-box">
                <input type="text" name="message" value="" placeholder="Type message">
                <i class="material-icons" style="">sentiment_satisfied_alt</i>
                <i class="material-icons" style="">attach_file</i>
                <i class="material-icons" style="">send</i>
              </div>
          </div>
        </div>
        </div>
      </div>
    </div>
  </body>

  <script type="text/javascript">
    var x = window.matchMedia("(max-width: 767.98px)");
    var drawers = document.getElementsByClassName('friend-drawer');
      function openchat() {
        if(x.matches){
          document.getElementsByClassName('contacts-panel')[0].style.display = "none";
          document.getElementsByClassName('chat-panel')[0].style.display = "flex";
        }
      }
      window.addEventListener("resize", () =>{
        if(window.innerWidth > 760 && window.innerWidth < 800 ){
          if(document.getElementsByClassName('contacts-panel')[0].style.display === "none")
            {document.getElementsByClassName('contacts-panel')[0].style.display = "flex";}
        }
      });
  </script>
</html>

<%String uname=(String)session.getAttribute("username"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("index.jsp");
            }
        
  %>
   
<html>
    <head>
        <meta charset="utf-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
        <script type="text/javascript" src="check.js"></script>
        <link rel="stylesheet" href="Style/main.css">
       <script>
            setInterval(reloaddata,3000);
    </script>
    </head>
    <body>
      
      <div class="cont">
      <div class="row no-gutters">
        <div class="col-md-12 col-lg-1">
          <div class="personal-panel">
              <img src="Style/Tom.jpg" alt="" class="profile-image">
              <h6 class="profile-name"><%=uname%></h6>
              <ul class="list-unstyled" style="margin:20px auto;">
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">chat</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 24px;margin:13px;">group_add</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">folder</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;">settings</i></li>
                <li class="text-center m-2"><i class="material-icons" style="font-size: 20px;margin:15px;"><a href="logout.jsp" >logout</a></i></li>
              </ul>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="contacts-panel">
            <div class="panel-detail">
              <h4 class="m-0 font-weight-bold">Following</h4>
            </div>
            <div class="search-box">
              <input type="text" name="contacts" value="" placeholder="Search">
              <i class="material-icons" style="color: gray;vertical-align: middle;">search</i>
            </div>
              <div class="friend-box">
                <div class="group-drawer" onclick="openchat()">
                  <div class="profile-image">A</div>
                  <div class="info">
                    <h5 class="m-0">Avengers</h5>
                    <p>There was an idea to bring together a group of remarkable people</p>
                  </div>
                </div>
                <div class="group-drawer" onclick="openchat()">
                  <div class="profile-image">JL</div>
                  <div class="info">
                    <h5 class="m-0">Justice League</h5>
                    <p>Detective Comics Extended Universe</p>
                  </div>
                </div>
              </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-7 col-xl-5">
          <div class="chat-panel">
              <!-- <h4 class="font-weight-bold mb-1">Chat</h4>
              <div class="underline"></div> -->
              <div class="panel-detail">
                <div class="profile-image">A</div>
                <div class="info" style="text-align:left;">
                  <h5 class="m-0">Avengers</h5>
                  <p style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">There was an idea to bring together a group of remarkable people</p>
                </div>
              </div>
              <div style="flex-grow: 1;overflow-y: scroll;" id="list">
                <p id="result"></p>
                <div class="chat-box" id="content">
                </div>
              </div>
              <div class="message-box">
                <input style="display: none" type="text" id="u" value="<%=uname%>">
                <input type="text" name="message" value="" placeholder="Type message" id="h">
                <i class="material-icons" style="">sentiment_satisfied_alt</i>
                <i class="material-icons" style="">attach_file</i>
                <i class="material-icons" style="" onclick="addText()">send</i>
              </div>
          </div>
        </div>
        <div class="col-lg-0 col-xl-2 members-panel">
          <div class="panel-detail">
            <h4 class="m-0 font-weight-bold">Members</h4>
          </div>
          <div class="members-box pt-2">
            <div class="member d-flex align-items-center">
              <div class="profile-image small">T</div>
              <h6 class="m-0 text-secondary">Tony Stark</h6>
            </div>
            <div class="member d-flex align-items-center">
              <div class="profile-image small">S</div>
              <h6 class="m-0 text-secondary">Steve Rogers</h6>
            </div>
            <div class="member d-flex align-items-center">
              <div class="profile-image small">T</div>
              <h6 class="m-0 text-secondary">Thor</h6>
            </div>
            <div class="member d-flex align-items-center">
              <div class="profile-image small">N</div>
              <h6 class="m-0 text-secondary">Natasha Romanoof</h6>
            </div>
          </div>
        </div>
        </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
    var x = window.matchMedia("(max-width: 767.98px)");
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
    </body>
</html>

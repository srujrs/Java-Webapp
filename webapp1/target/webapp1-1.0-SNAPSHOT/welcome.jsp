
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
              <h6 class="profile-name">Peter Parker</h6>
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
              <div class="friend-box">
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">T</div>
                  <div class="text">
                    <h6 class="m-0">Tony Stark</h6>
                    <p>I am Iron Man...</p>
                  </div>
                  <div class="time">13:20</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">S</div>
                  <div class="text">
                    <h6 class="m-0">Steve Rogers</h6>
                    <p>I can do this all day...</p>
                  </div>
                  <div class="time">15:15</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">C</div>
                  <div class="text">
                    <h6 class="m-0">Thor</h6>
                    <p>I choose to run towerds my problem and not away from them...</p>
                  </div>
                  <div class="time">15:20</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">P</div>
                  <div class="text">
                    <h6 class="m-0">Peter Parker</h6>
                    <p>With great power comes great responsibility...</p>
                  </div>
                  <div class="time">16:00</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">B</div>
                  <div class="text">
                    <h6 class="m-0">Bruce Banner</h6>
                    <p>Hulk smash...</p>
                  </div>
                  <div class="time">16:30</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">C</div>
                  <div class="text">
                    <h6 class="m-0">Clint Barton</h6>
                    <p>If you step out of the door, you are an Avenger...</p>
                  </div>
                  <div class="time">16:31</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">N</div>
                  <div class="text">
                    <h6 class="m-0">Natasha Romanoof</h6>
                    <p>See you in a minute..</p>
                  </div>
                  <div class="time">16:45</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">W</div>
                  <div class="text">
                    <h6 class="m-0">Wanda Maximoof</h6>
                    <p>You took everything from me...</p>
                  </div>
                  <div class="time">17:04</div>
                </div>
                <div class="friend-drawer" onclick="openchat()">
                  <div class="profile-image">T</div>
                  <div class="text">
                    <h6 class="m-0">Thanos</h6>
                    <p>I am inevitable...</p>
                  </div>
                  <div class="time float-right">18:00</div>
                </div>
              </div>
          </div>
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

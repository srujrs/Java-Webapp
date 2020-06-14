var selectedGroup = "";
function addText()
{
    var username = document.getElementById('u').value;
    var msg = document.getElementById('h').value;
    /*olist = document.getElementById('list');
    op = document.createElement('p');
    op.innerHTML = username + "- <g>" + msg + "</g>";
    ocontent = document.getElementById('content');
    ocontent.appendChild(op);             //Add new line on click
    olist.scrollTop = olist.scrollHeight; //Adjust Height*/
    document.getElementById('h').value = '';
    if(selectedGroup === null || selectedGroup === ""){
        console.log("No group selected");
    }else{
        var xmlhttp;
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("POST", "chatstore?uname=" + username + "&msg=" + msg + "&id=" + selectedGroup, true);

        xmlhttp.onreadystatechange = function()
        {
            if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
            {

                document.getElementById("result").innerHTML = 'sent';
                document.getElementById("result").innerHTML = '';
            }
        };
        xmlhttp.send(null);
    }
}
function reloaddata()
{
    var username = document.getElementById('u').value;
    if(selectedGroup === null || selectedGroup === ""){
        console.log("No group selected");
    }else{
        var xmlhttp;
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xmlhttp.open("POST", "reload", true);
        xmlhttp.setRequestHeader("username",  username );
        xmlhttp.setRequestHeader("groupid",  selectedGroup );
        xmlhttp.onreadystatechange = function()
        {
            if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
            {

                document.getElementById("content").innerHTML = xmlhttp.responseText;
    //            olist = document.getElementById('list'); //everything in id list
    //            olist.scrollTop = olist.scrollHeight;
            }
        };
        xmlhttp.send(null);
    }

}
function showGroups(){
    var username = document.getElementById('u').value;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("POST", "groupList", true);
    xmlhttp.setRequestHeader("username",  username );

    xmlhttp.onreadystatechange = function()
    {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
        {
            document.getElementById("groups").innerHTML = xmlhttp.responseText;
        }
    };
    xmlhttp.send(null);
}
function displayChat(event){
    event.stopPropagation();
    var groupid = event.target.id;
    selectedGroup = groupid;
    var username = document.getElementById('u').value;
    var c = document.getElementById('group-info');
    c.querySelector('.profile-image').innerHTML = event.target.querySelector('h5').innerHTML.charAt(0);
    c.querySelector('h5').innerHTML = event.target.querySelector('h5').innerHTML;
    c.querySelector('p').innerHTML = event.target.querySelector('p').innerHTML;
    var xmlhttp;
    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("POST", "reload", true);
    xmlhttp.setRequestHeader("username",  username );
    xmlhttp.setRequestHeader("groupid",  groupid );
    xmlhttp.onreadystatechange = function()
    {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
        {
            document.getElementById("content").innerHTML = xmlhttp.responseText;
        }
    };
    xmlhttp.send(null);
}

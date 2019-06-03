<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <script>
    document.getElementById("demo").innerHTML = 'Hello,<%=Session["Name"]%>'
}</script>
    
   <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #eaf0f9;
        }

        li {
            float: left;
            border-right: none;
        }

            li:last-child {
                border-right: none;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #999a9b;
                }

        .active {
            background-color:#999a9b;
        }

        button {
            background-color: #eaf0f9;
            border: none;
            padding: 15px 15px;
        }

        .button2 {
            background-color: #DADADA;
            width: 300px;
            padding: 50px 90px;
            font-size: 50px;
            border-radius: 8px;
            font-family: Segoe UI Light;
        }

        .button3 {
            background-color: #EFE2DF;
            width: 300px;
            padding: 50px 90px;
            font-size: 50px;
            border-radius: 8px;
            font-family: Segoe UI Light;
        }

        .button4 {
            background-color: #D6F2D3;
            width: 300px;
            padding: 50px 90px;
            font-size: 50px;
            border-radius: 8px;
            font-family: Segoe UI Light;
        }

        .button5 {
            background-color: #f6f7cd;
            width: 300px;
            padding: 50px 50px;
            font-size: 50px;
            border-radius: 8px;
            font-family: Segoe UI Light;
        }
        .not_show
       {
        display:none;
       }
      .show
       {
         display:;
         float:right;
       }
      textarea  
{  
   font-family:"Segoe UI Light";
   font-size: 16px; 
   background-color:white; 
   text-align:center; 
}
    </style>
    <script> var x = false;</script>
</head>
<body style="font-family:Segoe UI Light;background-color:#dce4f2;">
    <ul>
        <li><a class="active" href="#home"><img src="L.png"/></a></li>
        <li><a href="t2.aspx"><img src="userr.png"/></a></li>
        <li><a href="your_songs.aspx"><img src="heart.png"/></a></li>
        <li><button class="button" onclick="Rate()"><img src="rate.png"/></button></li>
        <li style="float:right"><button class="button" onclick="ShowText()"/><img src="question.png"/></li>
        <li style="float:right"><button class="button"/><img src="Logo.png"/></li>
    </ul>
    <textarea class="not_show" id="text" rows="4" cols="50">in this website you can learn about new songs and create your own playlist! All you have to do is to click on the heart button!</textarea>
    <p id="demo"></p>
    <br/><br/><br/>
    <center><div style="font-family:Segoe UI Light; font-size:50px;"><font color="black">Explore new songs & Add them to your playlist!</center></div></font>
    <div align="center">
        <br/><br/><br/>
        <table>
            <tr/>
                <td><button class="button button2" onclick="window.location.href='rock.aspx'">Rock</button></td>
                <td><button class="button button3" onclick="window.location.href='pop.aspx'">Pop</button></td>
            </tr>
            <tr/>
                <td><button class="button button4" onclick="window.location.href='jazz.aspx'">Jazz</button></td>
                <td><button class="button button5" onclick="window.location.href='classic.aspx'">Classical</button></td>
            </tr/>
        </table>
    </div>
    <script>
function Rate() {
  var rate = prompt("rate the website from 1-5");
  if(rate>3&&rate<6)
  {
    alert(":)");
  }
  else
  {
    alert(":(");
  }
}
function ShowText() 
{
    if(!x)
    {
        document.getElementById("text").className = "show";
    }
    else {
        document.getElementById("text").className = "not_show";
    }
    x = !x;
}

    </script>  
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="your_songs.aspx.cs" Inherits="your_songs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>your songs</title>
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
        </style>
</head>
<body style="background-color:#dce4f2">
<ul>
        <li><a href="home.aspx"><img src="L.png"/></a></li>
        <li><a href="t2.aspx"><img src="userr.png"/></a></li>
        <li><a href="your_songs.aspx" class="active"><img src="heart.png"/></a></li>
        <li><button class="button" onclick="Rate()"><img src="rate.png"/></button></li>
        <li style="float:right"><button class="button"/><img src="Logo.png"/></li>
    </ul><br /><center><div style="font-family:Segoe UI Light; font-size:50px;">Your Songs</div></center><br /><br />
    <div align="center"><table border="0">
    <tr>
        <td style="background-color:#DADADA;width:300px;height:300px;border-radius:8px"id="rock"></td>
        <td style="background-color:#EFE2DF;width:300px;height:300px;border-radius:8px"id="pop"></td>
    </tr>
    <tr>
        <td style="background-color:#D6F2D3;width:300px;height:300px;border-radius:8px"id="jazz"></td>
        <td style="background-color:#f6f7cd;width:300px;height:300px;border-radius:8px"id="classic"></td>
    </tr>

    </table></div>
    <script>
        function Rate() {
            var rate = prompt("rate the website from 1-5");
            if (rate > 3 && rate < 6) {
                alert(":)");
            }
            else {
                alert(":(");
            }
        }
    </script>
    
</body>
</html>

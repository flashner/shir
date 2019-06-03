﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jazz.aspx.cs" Inherits="Jazz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jazz</title>
</head>
    <body style="font-family:Segoe UI Light;background-color:#D6F2D3;">
    <div style="background-color:white;"><center><h1 style="font-family:Showcard Gothic;font-size:60px">Jazz</h1></center></div>
    <div style="background-color:#F0F9EB;">
        <center>
            <h3 style="font-family:Segoe UI Light">A little bit information about Jazz music...</h3>Jazz is a music genre that originated in the African-American communities of New Orleans, United States. It originated in the late 19th and early 20th centuries, and developed from roots in blues and ragtime. Jazz is seen by many as "America's classical music".</br>
            <a href="https://en.wikipedia.org/wiki/Jazz">learn more about Jazz music</a>
        </center>

    </div>
    <br>
    <style>
        .unstyled-button {
            border: none;
            padding: 0;
            background: none;
        }

        div {
            margin: 20px 0;
        }
    </style>
    <script>
        var on = [false, false, false, false, false];
        function button(num,img)
        {
            if (on[num] === false) {
                img.src = "heart3.png";
            }
            else {
                img.src = "heart.png";
            }
            on[num] = !on[num];
        }
    </script>
    <table border="1" align="center">
        <tr>
            <th bgcolor="#F0F1ED">Like</th>
            <th bgcolor="#F0F1ED">Song</th>
            <th bgcolor="#F0F1ED">Artist</th>
            <th bgcolor="#F0F1ED"> Youtube link</th>
            <th bgcolor="#F0F1ED"> Interesting facts</th>
            <th bgcolor="#F0F1ED"> Picture</th>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(0, img1)"><img id="img1" src="heart.png"></button>
            <td align="center"><b>There will never be<br /> another you</td>
            <td align="center"> Harry Warren<br /> and Mack Gordon</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/Til3lV_ItZE"></iframe></td>
            <td align="left"><ul><li>the song was written for the Twentieth Century<br /> Fox musical "Iceland" (1942). </li><li>the song has many versions</li></ul></td>
            <td> <img src="you.jpg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(1, img2)"><img img id="img2" src="heart.png"></button>
            <td align="center"><b>All of me</td>
            <td align="center"> Gerald Marks <br />and Seymour Simons</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/1JaJtNLhlfk"></iframe></td>
            <td align="left"><ul><li>"All of Me" first came to public awareness when<br /> a performance by Belle Baker was</br> broadcast over the radio in 1931.</li><li>The song was used in the 1932 film Careless Lady.</li><li>Frank Sinatra recorded several versions of "All of Me".</li></ul></td>
            <td> <img src="allofme.png" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(2, img3)"><img img id="img3" src="heart.png"></button>
            <td align="center"><b>Autumn leaves</td>
            <td align="center"> Joseph Kosma<br /> and Jacques Prevert</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/xXBNlApwh0c"></iframe></td>
            <td align="left"><ul><li>An instrumental version by pianist Roger Williams<br /> was a #1 best-seller in the USA</br> Billboard charts of 1955.</li><li>The song is in AABC form. </li><li>"Autumn Leaves" offers a popular way for beginning<br /> jazz musicians to become </br>acquainted with jazz harmony as the chord progression.</li></ul></td>
            <td> <img src="automnLeaves.jpg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(3, img4)"><img img id="img4" src="heart.png"></button>
            <td align="center"><b>On the sunny side<br /> of the street</td>
            <td align="center"> Jimmy McHugh<br /> and Dorothy Fields.</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/Nn3soYbSpS4"></iframe></td>
            <td align="left" ;width="60"><ul><li>Having become a jazz standard, it was played by<br /> Louis Armstrong, Dave Brubeck,</br> Earl Hines, Benny Goodman, Lionel Hampton, Erroll Garner,<br /> Dizzy Gillespie, Art Tatum,</br> James Booker, Count Basie, and Lester Young.</li><li>The Louis Armstrong version was recorded in the key<br /> of C major, but it has been </br>recorded in<br /> a range of keys; Ted Lewis recorded it in D major and Ella Fitzgerald in G             major.</li><li>Richman and Ted Lewis enjoyed hit records with the song in 1930.</li></ul></td>
            <td> <img src="sunny.jpeg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(4, img5)"><img img id="img5" src="heart.png"></button>
            <td align="center"><b>Take five</td>
            <td align="center"> Paul Desmond </td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/nzpnWuk3RjU"></iframe></td>
            <td align="left" ;width="60"><ul><li>Although released as a single on September 21, 1959<br />, "Take Five" fulfilled its chart</br> potential only when reissued in May 1961</li><li>Take Five" is known for its distinctive two-chord            [b]<br />piano vamp; catchy blues-scale</br> saxophone melody; inventive, jolting drum solo</li></ul></td>
            <td> <img src="take5.jpg" alt="" height="175" width="190"></td>
        </tr>
    </table>
    </div>
</body>
</html>

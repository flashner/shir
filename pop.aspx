﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pop.aspx.cs" Inherits="pop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pop</title>
</head>
<body style="font-family:Segoe UI Light;background-color:#EFE2DF;">
 <div style="background-color:#F1F1F7;"><center><h1 style="font-family:Forte;font-size:60px">Pop</h1></center></div>
    <div style="background-color:#F9EDEB;">
        <center>
            <h3 style="font-family:Segoe UI Light">A little bit information about Pop music...</h3>
            Pop music is a genre of popular music that originated in its modern form in the United States and United Kingdom during the mid-1950s.</br>
            <a href="https://en.wikipedia.org/wiki/Pop_music">learn more about Pop music</a>
    </div>
        <center>
            </br>
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
            <table border="1">
                <tr>
                    <th bgcolor="#F0F1ED">Like</th>
                    <th bgcolor="#F0F1ED">Song</th>
                    <th bgcolor="#F0F1ED">Artist</th>
                    <th bgcolor="#F0F1ED"> Youtube link</th>
                    <th bgcolor="#F0F1ED"> Interesting facts</th>
                    <th bgcolor="#F0F1ED"> Picture</th>
                </tr>
                <tr>
                    <td align="center"><button class="unstyled-button" onclick="button(0, img1)"><img src="heart.png" id="img1"></button>
                    <td align="center"><b>Billie Jean</td>
                    <td align="center">Michael Jackson</td>
                    <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/Zi_XLOBDo_Y"></iframe></td>
                    <td align="left" ;width="60"><ul><li>This song is about a girl who claimed Jackson was the father of her child.</li><li>Jackson came up with the song's rhythm track on his home drum</br> machine             and nailed the vocals in one take.</li><li>This was the second of seven US Top 10 hits from the Thriller album.</li></ul></td>
                    <td> <img src="Michael.jpg" alt="" border=3 height="175" width="190"></td>
                </tr>
                <tr>
                    <td align="center"><button class="unstyled-button" onclick="button(1, img2)"><img src="heart.png" id="img2"></button>
                    <td align="center"><b>Perfect</td>
                    <td align="center">Ed Sheeran</td>
                    <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/2Vv-BfVoq4g"></iframe></td>
                    <td align="left"><ul><li>Ed Sheeran wrote this waltz-time love song for his girlfriend Cherry</br> Seaborn, who is an old school friend.</li><li>The wedding song looks forward to a future of              children and family </br>and growing old together.</li><li>This was the most-heard song on US radio in 2018 with 3.99 billion</br> audience impressions.</li></ul></td>
                    <td> <img src="ed.jpg" alt="" border=3 height="175" width="190"></td>
                </tr>
                <tr>
                    <td align="center"><button class="unstyled-button" onclick="button(2, img3)"><img id="img3" src="heart.png"></button>
                    <td align="center"><b>Shallow</td>
                    <td align="center">Lady Gaga, Bradley Cooper</td>
                    <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/bo_efYhYU2A"></iframe></td>
                    <td align="left" ;width="60"><ul><li> the song was recorded for the 2018 remake of the classic</br> movie A Star is Born. </li><li>Lady Gaga wrote the song in four hours with British-American</br>             producer Mark Ronson, former Dirty Pretty Things guitarist</br> Anthony Rossomando, and songwriter Andrew Wyatt. </li><li>"Shallow" jumped from #21 to #1 on the Hot 100 following the</br> pair's             performance of the song at the Academy Awards.</li></ul></td>
                    <td> <img src="LadyGaga.jpg" alt="" border=3 height="175" width="190"></td>
                </tr>
                <tr>
                    <td align="center"><button class="unstyled-button" onclick="button(3, img4)"><img id="img4" src="heart.png"></button>
                    <td align="center"><b>Girls Like You</td>
                    <td align="center">Maroon 5</td>
                    <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/aJOTlE1K90k"></iframe></td>
                    <td align="left" ;width="60"><ul><li>"Girls Like You" is an upbeat love song in which Adam Levine shows</br> his appreciation for his girl after overcoming a difficult time in their                         relationship.</li><li>Maroon 5 debuted "Girls Like You" on May 30, 2018 during their</br> Red Pill Blues Tour gig in Tacoma, Washington.</li><li>The song was Maroon 5's fourth Hot 100 #1 hit                   </li></ul></td>
                    <td> <img src="maroon5.jpg" alt="" border=3 height="175" width="190"></td>
                </tr>
                <tr>
                    <td align="center"><button class="unstyled-button" onclick="button(4, img5)"><img id="img5" src="heart.png"></button>
                    <td align="center"><b>7 Rings</td>
                    <td align="center">Ariana Grande</td>
                    <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/QYh6mYIJG2Y"></iframe></td>
                    <td align="left" ;width="60"><ul><li>Ariana Grande tweeted that the song came about after a</br> "pretty rough day" in New York City following her split from Pete Davidson.</li><li>In the verses,             Grande boosts Julie Andrews' flow from The Sound</br> of Music's "My Favorite Things" as she details some of the things</br> she loves spending money on. </li><li>"7 Rings" accrued 14,966,544             global plays on Spotify in the 24 hours after</br> being released on January 18, 2018, smashing the single-day</br> record for streams on the platform. </li></ul></td>
                    <td> <img src="ariana.jpg" alt="" border=3 height="175" width="190"></td>
                </tr>
            </table>
            </div>  
</body>
</html>

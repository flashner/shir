<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rock.aspx.cs" Inherits="rock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock</title>
</head>
<body style="font-family:Segoe UI Light;background-color:#DADADA;">

    <div style="background-color:#F1F1F7;"><center><h1 style="font-family:Aharoni;font-size:60px;">Rock</h1></div></center>
    <div style="background-color:#E2E3E0;" align="center" ;>
        <h3 style="font-family:Segoe UI Light">A little bit information about Rock music...</h3>
        Rock music is a broad genre of popular music that originated as "rock and roll"
        in the United States in the early 1950s, and developed into a range of different styles
        in the 1960s and later, particularly in the United Kingdom and in the United States.<br>
        <a href="https://en.wikipedia.org/wiki/Rock_music">learn more about Rock music</a>
    </div>
    <style>
        .unstyled-button {
            border: none;
            padding: 0;
            background: none;
            background-color: none;
        }

        div {
            margin: 20px 0;
        }

        .red-button {
            border: none;
            padding: 0;
            background-color: blue;
        }

        div {
            margin: 20px 0;
        }
    </style>
    <script>
        var on = [false, false, false, false, false];
        function button(num, img) {
            if (on[num] === false) {
                img.src = "heart3.png";
            }
            else {
                img.src = "heart.png";
            }
            on[num] = !on[num];
        }
    </script>
    <table border="1" align="center" ;>
        <tr>
            <th bgcolor="#F0F1ED">Like</th>
            <th bgcolor="#F0F1ED">Song</th>
            <th bgcolor="#F0F1ED">Artist</th>
            <th bgcolor="#F0F1ED"> Youtube link</th>
            <th bgcolor="#F0F1ED"> Interesting facts</th>
            <th bgcolor="#F0F1ED"> Logo</th>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(0, img1)"><img id="img1" src="heart.png"></button>
            <td align="center"><b>Comfortably Numb</td>
            <td align="center">pink floyd</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/_FrOQC-zEog"></iframe></td>
            <td align="left" ;width="60"><ul><li>Roger Waters wrote the lyrics.</li><li>Dave Gilmour wrote the music while he was<br> working on a solo album in 1978.</li><li>Gilmour believes this song can               be divided</br> into two sections: dark and light.</li></ul></td>
            <td> <img src="p.jpg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(1, img2)"><img id="img2" src="heart.png"></button>
            <td align="center"><b>In Bloom</td>
            <td align="center">nirvana</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/PbgKEjNBHqM"></iframe></td>
            <td align="left"><ul><li>the song addresses people outside the underground<br> music community who did not understand the band's message.</li><li>Kurt Cobain explained that he had a disdain                  for "rednecks, macho</br>men and abusive people." He said that this song was an attack </br>on these types.</li><li>This was released as a single more than a year after the album "Nevermind"</br>                came out..</li></ul></td>
            <td> <img src="n.jpg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(2, img3)"><img id="img3" src="heart.png"></button>
            <td align="center"><b>Black Hole Sun</td>
            <td align="center">Soundgarden</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/3mbBbFH9fAg"></iframe></td>
            <td align="left" ;width="60"><ul><li>This song was written entirely by Chris Cornell. </li><li>Chris Cornell stated that the title came from something<br> he heard on the news - he thought the                anchor said "black hole sun," </br> but he really was saying something else.</li><li>This won a Grammy for Best Hard Rock Performance.</li></ul></td>
            <td> <img src="soundgarden.jpg" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(3, img4)"><img id="img4" src="heart.png"></button>
            <td align="center"><b>Starman</td>
            <td align="center">David Bowie</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/sI66hcu9fIs"></iframe></td>
            <td align="left" ;width="60"><ul><li>Bowie was influenced by the song "Over The Rainbow," which is most<br> obvious during the chorus ("There's a Starman...").</li><li>This was the last song             written for The Rise and Fall of Ziggy Stardust</br> and the Spiders from Mars</li><li>his song tells of a salvation waiting in the sky, as revealed through</br> Starman's messenger, Ziggy                        Stardust.</li></ul></td>
            <td> <img src="bowie.png" alt="" height="175" width="190"></td>
        </tr>
        <tr>
            <td align="center"><button class="unstyled-button" onclick="button(4, img5)"><img id="img5" src="heart.png"></button>
            <td align="center"><b>Bohemian Raphsody</td>
            <td align="center">Queen</td>
            <td align="center"><iframe width="210" height="175" src="https://www.youtube.com/embed/fJ9rUzIMcZQ"></iframe></td>
            <td align="left" ;width="60"><ul><li>Freddie Mercury wrote the lyrics, and there has been a lot of </br>speculation as to their meaning. </li><li>Mercury may have written "Galileo" into the lyrics             for the benefit of </br>Brian May, who is an astronomy buff.</li><li>This was Queen's first Top 10 hit in the US.</li></ul></td>
            <td> <img src="queen.png" alt="" height="175" width="190"></td>
        </tr>
    </table>
    </div>
    </center>
</body>

</html>

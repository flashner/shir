<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>registration</title>
</head>
<body style="font-family:Segoe UI Light;background-color:#dce4f2;"><center><img src="Logo.png" /><h2 style="font-family:Segoe UI Light;color:black">Register</h2>
    <form id="form1" runat="server">
    <div>
    <style> 
input[type=text] {
  width: 10%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: white;
  color:black ;
  border-radius: 6px;
}
input[type=text]:focus {
  background-color: lightblue;
}
.button {
  background-color: #eaf0f9; 
  border: none;
  color: black;
  font-family:Segoe UI Light;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 6px;
  width:125px;
  height:30px;
</style>
    User Name:<br />
            <input type="text" name="UserName"/><br />
            Password:<br />
            <input type="text" name="Password" /><br />
        Gender:<br />
        <select name="Gender">
        <option value="male">male</option>
        <option value="female">female</option>
        <option value="other">other</option>
        </select></br>
        Email:<br /><input type="text" name="Email"/><br />
        Favorite music style:<br /><input type="radio" name="music" value="rock" checked/> Rock<br/>
       <input type="radio" name="music" value="pop"/> Pop<br />
       <input type="radio" name="music" value="jazz"/> Jazz<br />
        <input type="radio" name="music" value="classic"/> Classic<br /> 
            <asp:Button CssClass="button" ID="Registration" runat="server" Text="Registration" OnClick="Registration_Botton_Click" /><br /> 
    </div></center>
    </div>
    </form>
</body>
</html>

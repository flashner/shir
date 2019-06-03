<%@ Page Language="C#" AutoEventWireup="true" CodeFile="t2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family:Segoe UI Light;background-color:#dce4f2;"><center><img src="Logo.png" /><h2 style="font-family:Segoe UI Light;color:black">Log in</h2>
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
            <asp:Button CssClass="button" ID="Login" runat="server" Text="Login" onclick="Login_Button_Click"/><br />
            <asp:Button CssClass="button" ID="Delete" runat="server" Text="Delete" onclick="Delete_Button_Click" /><br />
            <a href="registration.aspx">don't have a user? create one</a>
    </div></center>
    </form>
</body>

</html>

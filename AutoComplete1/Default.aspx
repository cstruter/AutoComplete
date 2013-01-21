<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script type="text/javascript">
        function pageLoad() {
            AutoComplete('<%=txtTest.ClientID %>', 10, 500, PageMethods, 'GetList');
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager runat="server" ID="scriptmanager" EnablePageMethods="true">
            <Scripts>
                <asp:ScriptReference Path="~/js/autocomplete.js" />
            </Scripts>
        </asp:ScriptManager>
        <asp:TextBox ID="txtTest" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>

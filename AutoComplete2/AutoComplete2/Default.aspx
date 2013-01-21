<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AutoComplete2._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Note: You need to include the ajaxcontroltoolkit assembly<br />
        http://ajaxcontroltoolkit.codeplex.com/releases Note: Depending on the version of
        the toolkit you're using, you will most likely need to include the ToolkitScriptManager
        and not the ScriptManager.
        <br />
        <br />
        <asp:ScriptManager runat="server" ID="scriptmanager" EnablePageMethods="true">
        </asp:ScriptManager>
        <%--        <cc1:ToolkitScriptManager runat="server" ID="scriptmanager" EnablePageMethods="true">
        </cc1:ToolkitScriptManager>--%>
        <asp:TextBox runat="server" ID="txtValue"></asp:TextBox>
        <cc1:AutoCompleteExtender ID="txtValue_AutoCompleteExtender" runat="server" DelimiterCharacters=""
            Enabled="True" TargetControlID="txtValue" ServiceMethod="Get" MinimumPrefixLength="1"
            CompletionSetCount="5" EnableCaching="true" CompletionInterval="500">
        </cc1:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>

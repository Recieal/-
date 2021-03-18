<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="技能测评.Projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width" />
    <title>项目列表</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top:50px;"> <%--container用于自适应设备，根据设备不同自动调整左右外边距宽度--%>
            <h2 class="text-center text-danger">天使筹项目列表</h2>
            <table class="table table-bordered table-striped">
                <tr>
                    <th>项目名称</th>
                    <th>目标金额</th>
                    <th>支持人数</th>
                    <th>人气</th>
                    <th>类型名称</th>
                    <th>操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ProjectName") %></td>
                            <td><%# Eval("TargetMoney","{0:C}") %></td>
                            <td><%# Eval("SupportCount") %></td>
                            <td><%# Eval("Progress") %></td>
                            <td><%# Eval("ClassName") %></td>
                            <td>
                                <asp:Button CssClass="btn btn-danger btn-sm" ID="Button1" runat="server" Text="移除项目" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>

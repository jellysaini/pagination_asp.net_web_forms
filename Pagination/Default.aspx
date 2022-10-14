<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pagination.Default" %>

<%@ Register Src="~/Paging.ascx" TagPrefix="uc1" TagName="Paging" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="mainGrid" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <%#Eval("ID") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Order Name">
                        <ItemTemplate>
                            <%#Eval("OrderName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Of Delivery">
                        <ItemTemplate>
                            <%#Eval("DateOfDelivery") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price Method">
                        <ItemTemplate>
                            <%#Eval("PriceMethod") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PlantID">
                        <ItemTemplate>
                            <%#Eval("PlantID") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <uc1:Paging runat="server" ID="Paging" />
        </div>
    </form>
</body>
</html>

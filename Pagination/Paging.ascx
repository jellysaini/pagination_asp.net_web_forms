<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Paging.ascx.cs" Inherits="Pagination.Paging" %>

<style>
    .paging-selected {
        font-weight: bold;
        text-decoration: none;
        color: black;
    }

    .paging {
        text-decoration: none;
    }
</style>
<asp:Repeater ID="repPagesBottom" runat="server" OnItemCommand="repPagesBottom_ItemCommand">

    <ItemTemplate>
        <span>
            <asp:LinkButton CommandName="changePage" CommandArgument='<%# Eval("PageNum") %>' Text='<%# Eval("Title") %>' runat="server" CssClass='<%#Convert.ToBoolean(Eval("CurrentPage"))==true?"paging-selected":"paging" %>' />
        </span>
    </ItemTemplate>

</asp:Repeater>

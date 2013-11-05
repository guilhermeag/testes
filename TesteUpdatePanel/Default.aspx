<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TesteAppWeb.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:Panel ID="Panel1" runat="server" GroupingText="Panel Síncrono">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <p>
                        Update Panel 1</p>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="Panel não atualizado"></asp:Label></p>
                    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000" Enabled="true">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
                <ProgressTemplate>
                    <span style="color: Red">Carregando 1</span>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </asp:Panel>
    </div>
    <br />
    <div>
        <asp:Panel ID="Panel2" runat="server" GroupingText="Panel Assíncrono">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <p>
                        <asp:Button ID="btnAtualizar" runat="server" Text="Clique" OnClick="btnAtualizar_Click" />
                    </p>
                    <p>
                        <asp:Label ID="lblBotao" runat="server" Text="Botão não clicado"></asp:Label>
                    </p>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdateProgress ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel2" runat="server">
                <ProgressTemplate>
                    <span style="color: Red">Carregando 2</span>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </asp:Panel>
    </div>
    </form>
</body>
</html>

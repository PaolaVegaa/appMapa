<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Menu.Master" AutoEventWireup="true" CodeBehind="RegistrarTipo.aspx.cs" Inherits="appMapa.Presentacion.RegistrarTipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="p-5 bg-primary text-white">
        <h1 class="text-center">REGISTRAR TIPO DE EMPRESA</h1>
        <p class="text-center">Registro del Tipo de Empresas</p>
    </div>

    <div class="container-fluid">

        <div class="card offset-lg-4 offset-md-3 offset-sm-3 col-lg-4 col-md-6 col-sm-6 col-xs-12 mt-5 mb-5">

            <div class="card-header mb-3">
                <h2 class="text-center">REGISTRO TIPO DE EMPRESAS</h2>
            </div>

            <div class="card-body">

                <div class="form-group mb-3">
                    <label for="txtNombre">Nombre:</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Nombre" TextMode="SingleLine"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblMensaje" runat="server" Text="" Font-Bold="True" ForeColor="#0066FF" Font-Size="Medium"></asp:Label>
                </div>

            </div>

            <div class="card-footer">
                <asp:Button ID="btnRegistro" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="btnRegistro_Click" />
            </div>

        </div>


        <asp:GridView ID="gvTipo" runat="server" CssClass="table"></asp:GridView>

    </div>

</asp:Content>

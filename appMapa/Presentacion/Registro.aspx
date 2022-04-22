<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Menu.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="appMapa.Presentacion.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="p-5 bg-primary text-white">
        <h1 class="text-center">REGISTRAR EMPRESA</h1>
        <p class="text-center">Registro de Empresas</p>
    </div>

    <div class="container-fluid">

        <div class="card offset-lg-4 offset-md-3 offset-sm-3 col-lg-4 col-md-6 col-sm-6 col-xs-12 mt-5 mb-5">

            <div class="card-header mb-3">
                <h2 class="text-center">REGISTRO DE EMPRESAS</h2>
            </div>

            <div class="card-body">

                <div class="form-group mb-3">
                    <label for="ddlEmpresa">Tipo Empresa:</label>
                    <asp:DropDownList ID="ddlEmpresa" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <div class="form-group mb-3">
                    <label for="txtNombre">Nombre:</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Nombre" TextMode="SingleLine"></asp:TextBox>
                </div>
                
                <div class="form-group mb-3">
                    <label for="txtDireccion">Direccion:</label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Direccion" TextMode="SingleLine"></asp:TextBox>
                </div>

                <div class="form-group mb-3">
                    <label for="txtDescripcion">Descripcion:</label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Descripcion" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="form-group mb-3">
                    <label for="txtUrl">Url:</label>
                    <asp:TextBox ID="txtUrl" runat="server" CssClass="form-control" placeholder="Sitio Web" TextMode="Url"></asp:TextBox>
                </div>

                <!--Mapa-->
                <div class="form-group mb-3">
                    <div id="mapa" style="width: 100%; height: 400px;"></div>
                </div>
                <!-------->

                <div class="form-group mb-3">
                    <label for="txtLatitud">Latitud:</label>
                    <asp:TextBox ID="txtLatitud" runat="server" CssClass="form-control" placeholder="Latitud" TextMode="SingleLine" Text="5.724140920764077"></asp:TextBox>
                </div>

                <div class="form-group mb-3">
                    <label for="txtLongitud">Longitud:</label>
                    <asp:TextBox ID="txtLongitud" runat="server" CssClass="form-control" placeholder="Longitud" TextMode="SingleLine" Text="-72.92372675216792"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblMensaje" runat="server" Text="" Font-Bold="True" ForeColor="#0066FF" Font-Size="Medium"></asp:Label>
                </div>

            </div>

            <div class="card-footer">
                <asp:Button ID="btnRegistro" runat="server" Text="Registrar" CssClass="btn btn-primary" UseSubmitBehavior="False" OnClick="btnRegistro_Click"  />
            </div>

        </div>

    </div>


    <!--Funcionalidad del Mapa-->
    <script>

        $('#mapa').locationpicker({

            radius: 0,

            location: {
                latitude: $('#<%=txtLatitud.ClientID%>').val(),
                longitude: $('#<%=txtLongitud.ClientID%>').val()
            },

            inputBinding: {
                latitudeInput: $('#<%=txtLatitud.ClientID%>'),
                longitudeInput: $('#<%=txtLongitud.ClientID%>')
            },
            
        });

    </script>

</asp:Content>

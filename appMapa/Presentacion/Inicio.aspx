<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="appMapa.Presentacion.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="p-5 bg-primary text-white">
        <h1 class="text-center">INICIO</h1>
        <p class="text-center">Ubicación de Empresas Registradas</p>
    </div>

    <div class="container mt-3 mb-5">

        <div class="form-group mb-5">

            <div id="map" style="width: 100%; height: 500px"></div>

        </div>

        <div class="form-group mb-5">

            <asp:Label ID="Label1" runat="server" Text="Numero de Empresas"></asp:Label>
            <asp:TextBox ID="txtContador" runat="server" CssClass="form-control mb-5" Style="max-width: 500px;" Enabled="False"></asp:TextBox>

            <asp:HiddenField ID="txtLatitud" runat="server" />
            <asp:HiddenField ID="txtLongitud" runat="server" />

            <div class="table-responsive">
                <asp:GridView ID="gvEmpresas" runat="server" CssClass="table table-hover" BorderStyle="None"></asp:GridView>
            </div>

        </div>

    </div>

    <script>

        // Cargue del mapa en general en ciertas ubicaciones
        var map = new GMaps({
            el: '#map',
            lat: 5.724140920764077,
            lng: -72.92372675216792,
        });


        // Cargar mi ubicacion con un marcador
        GMaps.geolocate({

            success: function (position) {

                lat = position.coords.latitude;
                lng = position.coords.longitude;

                //Definimos la vista del mapa sobre las coordenadas obtenidas
                map.setCenter(lat, lng);

                //Añadimos un marcador a nuestra ubicacion
                map.addMarker({
                    lat: lat,
                    lng: lng,
                    title: 'Mi ubicacion',
                    infoWindow: {
                        content: '<h4>Mi ubicacion</h4>'
                    }
                });

            },

            error: function (error) {
                alert('Geolocation failed: ' + error.message);
            },

            not_supported: function () {
                alert("Your browser does not support geolocation");
            }

        });


        // Ubicaciones desde la base de datos
        <%--var con = $("#ContentPlaceHolder1_txtContador").val();

        for (var i = 0; i < con; i++) {

            // Agregar marcadores desde Programacion
            map.addMarker({
                lat: $("#<%=txtLatitud.ClientID%>").val(),
                lng: $("#<%=txtLongitud.ClientID%>").val(),
                title: 'Ejemplo',
                infoWindow: {
                    content: 'Marcador de ejemplo'
                }
            });

        }--%>

        map.addMarker({
            lat: 5.736975201870503,
            lng: -72.91438730037807,
            title: 'La Pradera',
            infoWindow: {
                content: '<h4>La Pradera</h4><br/>Sogamoso Boyaca Colombia<br/><br/>Hotel 5 estrellas con mas de 50 años de experiencia'
            }
        });

        map.addMarker({
            lat: 5.735791599130167,
            lng: -72.91069255746005,
            title: 'La Maestranza Campestre',
            infoWindow: {
                content: '<h4>La Maestranza Campestre</h4><br/>Sogamoso Boyaca Colombia<br/><br/>Restaurante con la mejor comida china de la ciudad'
            }
        });

        map.addMarker({
            lat: 5.726909829891781,
            lng: -72.93884502328036,
            title: 'Parqueadero Rio Chiquito',
            infoWindow: {
                content: '<h4>Parqueadero Rio Chiquito</h4><br/>Sogamoso Boyaca Colombia<br/><br/>Parqueadero 24/7 con cubierta incluida'
            }
        });

        map.addMarker({
            lat: 5.713629619339171,
            lng: -72.92585240281223,
            title: 'Farmacia Bella Vista',
            infoWindow: {
                content: '<h4>Farmacia Bella Vista</h4><br/>Sogamoso Boyaca Colombia<br/><br/>Farmacia con todos los medicamentos que necesite'
            }
        });

        map.addMarker({
            lat: 5.730977099542146,
            lng: -72.93775068200229,
            title: 'Hotel el Serrito',
            infoWindow: {
                content: '<h4>Hotel el Serrito</h4><br/>Sogamoso Boyaca Colombia<br/><br/>Hotel catalogado con la mayor comodidad de la ciudad'
            }
        });

        // Agregar marcadores de forma dinamica en el mapa
        //map.addListener('click', function (e) {

            //    lat = e.latLng.lat();
            //    lng = e.latLng.lng();

            //    map.addMarker({
            //        lat: lat,
            //        lng: lng
            //    });

        //});

    </script>

</asp:Content>

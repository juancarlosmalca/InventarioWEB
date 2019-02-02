<%-- 	
    Document   : listar	
    Created on : 25-ene-2019, 16:53:32	
    Author     : MI PC	
--%>	

 <%@page import="rnegocio.funciones.FUsuario"%>	
<%@page import="rnegocio.entidades.Usuario"%>	
<%@page import="java.util.Iterator"%>	
<%@page import="java.util.List"%>	
<%@page contentType="text/html" pageEncoding="UTF-8"%>	

     <link href="../../pages/index.html" rel="stylesheet">	

     <!-- Bootstrap Core CSS -->	
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">	

     <!-- MetisMenu CSS -->	
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">	

     <!-- Social Buttons CSS -->	
    <link href="../vendor/bootstrap-social/bootstrap-social.css" rel="stylesheet">	

     <!-- Custom CSS -->	
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">	

     <!-- Custom Fonts -->	
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">	
<%	
 List<Usuario> lista=FUsuario.usuario_buscartodos();	
 Iterator<Usuario> itUsuario=lista.iterator();	
%>	
<!DOCTYPE html>	
<html>	
    <head>	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">	
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">	
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css">	
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">	
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>	
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>	


         <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"></script>	
        <title>Usuarios</title>	


                 <meta charset="utf-8">	
        <meta http-equiv="X-UA-Compatible" content="IE=edge">	
        <meta name="viewport" content="width=device-width, initial-scale=1">	
        <meta name="description" content="">	
        <meta name="author" content="">	
        <!-- Bootstrap Core CSS -->	
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
        <!-- MetisMenu CSS -->	
        <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">	
        <!-- Custom CSS -->	
        <link href="../dist/css/sb-admin-2.css" rel="stylesheet">	
        <!-- Morris Charts CSS -->	
        <link href="../vendor/morrisjs/morris.css" rel="stylesheet">	
        <!-- Custom Fonts -->	
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">	
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->	
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->	
        <!--[if lt IE 9]>	
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>	
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>	
        <![endif]-->	
            <%@include file="../../cabecera.html" %>
    </head>
    <body>
    <%@include file="../../menu.html" %>    

 <!--Sección alerta-->	
        <%	
            String alerta="";	
            try {	
                      alerta=request.getParameter("alerta").toString();	
                } catch (Exception e) {	
                }	
           	
    if (alerta.equals("si")){%>	
        <div class="alert alert-success" role="alert">	
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>	
             <strong>Éxito!</strong> La transacción fue éxitosa!	
        </div>	
        <%} if(alerta.equals("no")){%>	
        <div class="alert alert-danger" role="alert">	
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>	
             <strong>Falló!</strong> La transacción fue fallida!	
        </div>	
       <% }%>	
        <!--Fin Sección alerta-->	
         <h1>Usuario</h1> 	
           <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  	



 <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">                <thead>	
                <th>Codigo</th>	
                <th>Nombre</th>	
                <th>Apellido</th>	
                <th>Cedula</th>	
                <th>Email</th>	
                <th>Clave</th>	
                <th>Primer Acceso</th>	
                <th>Ultimo Acceso</th>	
                <th>Ultima Ip</th>	
                <th>Fecha</th>               	

                  <th></th>	
                </thead>	
                <tbody>	
               <%while(itUsuario.hasNext()){	
                  Usuario usuario=itUsuario.next();%>	
                <tr>	
                   <td><%= usuario.getCodigo()%></td>	
                    <td><%= usuario.getNombre()%></td>	
                    <td><%= usuario.getApellido()%></td>	
                    <td><%= usuario.getCedula()%></td>	
                    <td><%= usuario.getEmail()%></td>	
                    <td><%= usuario.getClave()%></td>	
                    <td><%= usuario.getPrimer_acceso()%></td>	
                    <td><%= usuario.getUltimo_acceso()%></td>	
                    <td><%= usuario.getUltima_ip()%></td>	
                    <td><%= usuario.getFecha_modificacion()%></td>	
                     <td>	
                            <a class="btn btn-danger" href='procesa_eliminar.jsp?codigo=<%= usuario.getNombre()%>' onclick="return confirm('¿Está seguro que desea eliminar este registro?');">Eliminar</a>	

                         <button type="button"  onclick="return modaledita(<%= usuario.getCodigo()%>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalEditar">Editar</button>         	
                   </td>	
                </tr>	
               <%}%>                	
                </tbody>           	
            </table>	

                 <div class="modal fade" id="ModalEditar" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">	

                 <div class="modal-dialog" role="document">	
                <div class="modal-content">	
                      <div class="modal-header">	
                        <h5 class="modal-title" id="exampleModalLabel">Editar Usuario</h5>	
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">	
                          <span aria-hidden="true">&times;</span>	
                        </button>	
                      </div>	
                      <div class="modal-body">	


                       </div>	
              </div>	
            </div>	
          </div> 	


            <div class="modal fade" id="ModalNuevo" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">	

                 <div class="modal-dialog" role="document">	
                <div class="modal-content">	
                      <div class="modal-header">	
                        <h5 class="modal-title" id="exampleModalLabel">Nuevo Usuario</h5>	
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">	
                          <span aria-hidden="true">&times;</span>	
                        </button>	
                      </div>	
                      <div class="modal-body">	


                       </div>	
              </div>	
            </div>	
          </div>       	
                </div>	
             </div>   	

          <script src="https://code.jquery.com/jquery-3.3.1.js"></script>	
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>	
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>	
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>	
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js"></script>	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>	
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>	
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>	
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>	
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>	
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>	

     <script>	
           function modaledita(codigo){	
           	
      	
            $('.modal-body').load('editar.jsp?codigo='+codigo,function(){	
             });	
        }	
        function modalnuevo(codigo){	
           	
      	
            $('.modal-body').load('nuevo.jsp',function(){	
             });	
        }	
         <!--Sección datatable-->	
	$(document).ready(function() {	
            	
                var table = $('#example').DataTable( {	
                    lengthChange: false,	
                    buttons: [ 'copy', 'excel', 'csv', 'pdf', 'colvis' ],	
                        language: {	
                        "decimal": "",	
                        "emptyTable": "No hay información",	
                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",	
                        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",	
                        "infoFiltered": "(Filtrado de _MAX_ total entradas)",	
                        "infoPostFix": "",	
                        "thousands": ",",	
                        "lengthMenu": "Mostrar _MENU_ Entradas",	
                        "loadingRecords": "Cargando...",	
                        "processing": "Procesando...",	
                        "search": "Buscar:",	
                        "zeroRecords": "Sin resultados encontrados",	
                        "usuariote": {	
                            "first": "Primero",	
                            "last": "Ultimo",	
                            "next": "Siguiente",	
                            "previous": "Anterior"	
                        },	
                          "buttons": {	
                            "copy": "Copiar",	
                            "colvis": "Columnas visibles",	
                         }}	
                 } );	
                 table.buttons().container()	
                    .appendTo( '#example_wrapper .col-md-6:eq(0)' );	
            } );	
         <!--fin Sección datatable-->	
             <!--Sección alerta-->	
      window.setTimeout(function() {	
    $(".alert").fadeTo(500, 0).slideUp(500, function(){	
        $(this).remove(); 	
    });	
}, 4000);	
         <!--fin Sección alerta-->	
 	
 	
    </script>	

     </body>	
</html>
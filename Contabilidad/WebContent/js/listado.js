$(document).ready(
		function() {
			$('#idAgenda').DataTable(
					{
						"bFilter" : false,
						"aoColumnDefs" : [ {
							"bSortable" : false,
							"aTargets" : [ 0 ]
						}, ],
						"language" : {
							"lengthMenu" : 'Mostrar <select>'
									+ '<option value="10">10</option>'
									+ '<option value="20">20</option>'
									+ '<option value="30">30</option>'
									+ '<option value="40">40</option>'
									+ '<option value="50">50</option>'
									+ '<option value="-1">All</option>'
									+ '</select> contactos'
						}

					});

			// Borramos la clase del la primera columna
			$("#idAgenda tr").find('th:eq(0)').removeClass("sorting_asc");
			$("#idAgenda tr").find('th:eq(1)').removeClass("sorting_asc");
			// $("#idAgenda tr").find('th:eq(1)').toggleClass("sorting_asc");
			// $("#idAgenda tr").find('td:eq(0)').removeClass("sorting_1");
			// $("#idAgenda tr").find('td:eq(1)').toggleClass("sorting_1");

			// Funcion que pone/quita el valor de los checbox
			// seleccionados/deseleccionados en el campo 'idEliminar'
			$('input[type="checkbox"]').change(function() {
				// odtengo el valor de campo CheckBox
				var value = $(this).val();
				// odtengo el valor del campo IdEliminar
				var sIdEliminar = $('#idEliminar').val();
				var vIdEliminar = jQuery.makeArray(sIdEliminar.split(';'));

				// Si el campo esta chequeado
				if ($(this).prop('checked')) {
					if (!sIdEliminar) {
						vIdEliminar[0] = value;
					} else {
						// Anado el valor al array de IDs a eliminar
						vIdEliminar.push(value);
					}
				} else {
					indEliminar = jQuery.inArray(value, vIdEliminar);
					// Elimino el valor del array de IDs a eliminar
					vIdEliminar.splice(indEliminar, 1);
				}
				// cargo los datos en el campo con los identificadores a
				// eliminar
				sIdEliminar = vIdEliminar.join(';');
				$('#idEliminar').val(sIdEliminar);
			});

			// Tratamiento de la ventana modal
			$('#idBtnEliminar').click(function() {
				// Comprueba si hay o no contactos seleccionados
				var totalEliminar = $('#idEliminar').val();
				if (totalEliminar == '') {
					//Si no hay contactos seleccionados - abro la ventana Vacia
					$("#idEliminarVacio").modal('show');
				} else {
					//Si hay contactos seleccionados - abro la ventana informativa
					$("#idEliminarSeleccion").modal('show');
				}
			});
			
			//Ejecutar la eliminacion de los contactos
			//Al pulsar el boton de 'Confirmacion' oculta la ventana modal y hace un submit del formulario
			$('#idConfirmarEliminar').click(function(){
				$("#idEliminarSeleccion").modal('hide');
				$( "form" ).submit();
			});
		});

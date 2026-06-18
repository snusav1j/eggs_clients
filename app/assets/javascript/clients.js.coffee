$(document).on 'dblclick', '#clients-list tr.client-row', (e) ->
  client_id = $(this).attr('data-client-id')
  $.ajax 
    url: "/clients/edit_modal",
    type: 'GET'
    dataType: 'script'
    data:
      id: client_id
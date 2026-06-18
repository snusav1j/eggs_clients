$(document).on 'dblclick', '#orders-list tr.order-row', (e) ->
  order_id = $(this).attr('data-order-id')
  $.ajax 
    url: "/orders/edit_modal",
    type: 'GET'
    dataType: 'script'
    data:
      id: order_id
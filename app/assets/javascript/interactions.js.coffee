$(document).on 'dblclick', '#interactions-list tr.interaction-row', (e) ->
  interaction_id = $(this).attr('data-interaction-id')
  $.ajax 
    url: "/interactions/edit_modal",
    type: 'GET'
    dataType: 'script'
    data:
      id: interaction_id
$(document).on 'dblclick', '#users-list tr.user-row', (e) ->
  user_id = $(this).attr('data-user-id')
  $.ajax 
    url: "/users/edit_modal",
    type: 'GET'
    dataType: 'script'
    data:
      id: user_id
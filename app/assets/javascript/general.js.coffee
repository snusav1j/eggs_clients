window.fix_text_area_height = ->
  textareas = document.querySelectorAll('textarea')

  for textarea in textareas
    do (textarea) ->

      set_height = ->
        textarea.style.height = 'auto'
        textarea.style.height = textarea.scrollHeight + 'px'

      setTimeout(set_height, 20)

      textarea.addEventListener 'input', set_height

$ ->

  $(document).on 'click', '.hide-show-sidebar', ->
    $('#sidebar').toggleClass('hide')
    $('.hide-show-sidebar-btn').toggle()
    sidebar_hidden = $('#sidebar').hasClass('hide')

    $.ajax 
      url: "/user_settings/set_sidebar_state",
      type: 'POST'
      dataType: 'script'
      async: true
      data:
        sidebar_hidden: sidebar_hidden
      
  $(document).on 'click', '.tabs a', (e) ->
    e.preventDefault()

    target = $(this).attr('href')

    $('.tab-pane').removeClass('active')
    $(target).addClass('active')

    $('.tabs li').removeClass('active')
    $(this).parent().addClass('active')
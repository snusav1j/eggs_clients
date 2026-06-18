window.fix_text_area_height = ->
  textareas = document.querySelectorAll('textarea')

  for textarea in textareas
    do (textarea) ->

      set_height = ->
        textarea.style.height = 'auto'
        textarea.style.height = textarea.scrollHeight + 'px'

      setTimeout(set_height, 20)

      textarea.addEventListener 'input', set_height
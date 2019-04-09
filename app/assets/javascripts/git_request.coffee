$(document).on 'turbolinks:load', ->
  $("[data-content]").click (event) ->
    $('#response-content').empty()
    $.ajax({
      type: 'JSON',
      method: 'GET',
      url: this.getAttribute('data-content'),
      contentType: 'application/json; charset=utf-8',
      success: (data) ->
        $('#response-content').jsonViewer(data)
    })
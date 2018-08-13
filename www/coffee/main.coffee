num = 1
getArticle = ->
  $.get('https://qiita.com/api/v2/items?',
  page: num
  per_page: '20').done (data) ->
    $.each data, (i, v) ->
      a = $ '<a>'
      .attr 'href', v.url
      .text v.title
      $ '#home'
      .append $('<div class="content">').append a
      return
    return
  return
getArticle()
$ '#next'
.click ->
  num++
  getArticle()
  return
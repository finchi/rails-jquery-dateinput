$.tools.dateinput.conf.format = 'dd.mm.yyyy'
$.tools.dateinput.localize 'de',
  months:      'Januar,Februar,März,April,Mai,Juni,Juli,August,September,Oktober,November,Dezember',
  shortMonths: 'Jan,Feb,Mär,Apr,Mai,Jun,Jul,Aug,Sep,Okt,Nov,Dez',
  days:        'Sonntag,Montag,Dienstag,Mittwoch,Donnerstag,Freitag,Samstag',
  shortDays:   'So,Mo,Di,Mi,Do,Fr,Sa'
$.tools.dateinput.conf.lang = 'de';

$(document).ready ->

  $('div.date, div.datetime').each ->
    year = month = day = null
    $(@).find("select").each ->
      switch $(@).attr('id').split('_').pop()
        when '1i'
          year = $(@)
          year.hide()
        when '2i'
          month = $(@)
          month.hide()
        when '3i'
          day = $(@)
          day.hide()

    current_date = new Date year.val(), month.val() - 1, day.val()
    dateinput = $("<input type='date'>").dateinput
      value: current_date
      firstDay: 1
      max: $(@).data('max')
      min: $(@).data('min')

    # Without this, the field is initially blank
    dateinput.val dateinput.data().dateinput.getValue($.tools.dateinput.conf.format)

    $(@).find('select:first').before dateinput
    dateinput.data("dateinput").change ->
      day.val this.getValue().getDate()
      month.val this.getValue().getMonth() + 1
      year.val this.getValue().getFullYear()
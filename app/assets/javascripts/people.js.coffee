$(document).on 'ready page:load', ->
  $('select#person_city_id').parent().hide()
  cities = $('select#person_city_id')
  # console.log(cities)
  $('select#person_country_id').change ->
    country = $('select#person_country_id :selected').text()
    # console.log("country selected is: " + country)
    options = $(cities).find("optgroup[label=" + country + "]").html()
    console.log(options)
    if options
      $('select#person_city_id').html(options)
      $('select#person_city_id').parent().show()
    else
      $('select#person_city_id').empty()
      $('select#person_city_id').parent().hide()

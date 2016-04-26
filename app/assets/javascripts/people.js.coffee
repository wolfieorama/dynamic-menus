# $(document).ready ->
#   cities = $('#person_city_id').html()
#   # console.log(cities)
#   $('#person_country_id').change ->
#     country = $('#person_country_id :selected').text()
#     options = $(cities).filter("optgroup[label=" + country + "]").html()
#     console.log(options)
#     if options
#       $('#person_city_id').html(options)
#     else
#       $('#person_city_id').empty()
$(document).ready ->
  cities = $('select#person_city_id')
  # console.log(cities)
  $('select#person_country_id').change ->
    country = $('select#person_country_id :selected').text()
    console.log("country selected is: " + country)
    options = $(cities).find("optgroup[label=" + country + "]").html()
    # console.log(options)
    if options
      $('select#person_city_id').html(options)
    else
      $('select#person_city_id').empty()

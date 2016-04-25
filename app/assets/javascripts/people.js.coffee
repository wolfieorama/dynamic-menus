jQuery ->
  citys = $('#city_id').html()
  console.log(citys);
  $('#country_id').change ->
    country = $('#country_id :selected').text()
    options = $(citys).filter("optgroup[label='#{project}']").html
    if options
      $('#city_id').html(options)
    else
      $('#city_id').empty()

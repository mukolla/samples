$lcRegions = $ ".location-selectors .lcRegions"
$lcCities = $ ".location-selectors .lcCities"

clearlcCities = ( $lcCities ) ->
	$lcCities.html $ "<option>"
	$('.lcZip').attr('value', '')

lcCityTrigger = ( noCityClear ) ->
	$lc = $lcRegions.closest '.location-selectors'
	$lcCities = $lc.find '.lcCities'
	clearlcCities $lcCities if not (noCityClear? and noCityClear == true)
	#$lcRegions.val() && ($lcCities.removeAttr 'disabled') || ($lcCities.attr 'disabled', true)
	$lcCities.trigger "liszt:updated"

$lcRegions.change lcCityTrigger

if $lcRegions.val() then lcCityTrigger true

clearlcRegions = ( $lcRegions ) ->
	$('.lcZip').attr('value', '')

lcRegionsTrigger = ( noRegionsClear ) ->
	if $lcCities.val()
		$lcRegions.find('option[value='+cityRegionsArr[$(this).val()].region+']').attr('selected', true)
		$lcRegions.trigger "liszt:updated"
		$('.lcZip').attr('value', cityRegionsArr[$(this).val()].zip)

	if !$lcCities.val()
		clearlcRegions true

$lcCities.change lcRegionsTrigger
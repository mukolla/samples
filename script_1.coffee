# METRICS TABS
$( "#metrics-tabs" ).tabs()

# Repalece Header from Mertics
$( "#metrics-tabs header h3").text( $( "#metrics-tabs header ul li" ).find("a").first().attr('data-original-title') )

$currentItemTab = $( "#metrics-tabs header ul" ).find('li');


$nextTabButton  = $( ".next-metrics-tabs" )
$prevTabButton = $( ".prev-metrics-tabs" )

$nextTabButton.attr('href', $currentItemTab.eq( $currentItemTab.filter('.ui-tabs-selected').index()+1 ).find('a').attr('href') )

if !$currentItemTab.filter('.ui-tabs-selected').index()
	$prevTabButton.hide()

$( "#metrics-tabs .ui-state-default a" ).on 'click', ->
	$(this).closest('ul').parent().find('h3').text( $(this).attr('data-original-title') )

	$selectItemTab =  $currentItemTab.filter('.ui-tabs-selected');

	if $selectItemTab.index()
		$prevTabButton.attr('href', $currentItemTab.eq( $selectItemTab.index()-1 ).find('a').attr('href') )
		$prevTabButton.show()
	else
		$prevTabButton.hide()

	if $currentItemTab.eq( $selectItemTab.index()+1 ).length
		$nextTabButton.attr('href', $currentItemTab.eq( $selectItemTab.index()+1 ).find('a').attr('href') )
		$nextTabButton.show()
	else
		$nextTabButton.hide()

$nextTabButton.on 'click', ->
	$currentItemTab.find('a[href="' + $nextTabButton.attr('href') + '"]').click()

$prevTabButton.on 'click', ->
	$currentItemTab.find('a[href="' + $prevTabButton.attr('href') + '"]').click()
# END METRICS TAB
	# METRICS TABS
	# Initial Metrics TABS
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

	#TARGET MARCETS


	slideTargetMarket = ( direction, context )->

		$currentTab = $(context).closest('.np-controls').siblings('.tab-content').find('.tab-pane.active')
		$indexCurrentTab  = $currentTab.find('.blc-info.active').index()

		if $(context).hasClass 'disabled'
			return false

		$currentTab.find('.blc-info').eq( $indexCurrentTab ).hide()
		$currentTab.find('.blc-info').eq( $indexCurrentTab ).removeClass('active')

		$currentTab.find('.blc-info').eq( $indexCurrentTab + direction ).show()
		$currentTab.find('.blc-info').eq( $indexCurrentTab + direction ).addClass('active')

		if ( !$currentTab.find('.blc-info').eq( $indexCurrentTab+2 ).length )
			$(context).addClass 'disabled'

		# remove class 'disabled' if cick prev-button
		if $currentTab.find('.blc-info').eq( $indexCurrentTab + direction + 1 ).length
			$(context).closest('.btn-group').find('a.next-btn').removeClass 'disabled'

		if ( !$currentTab.find('.blc-info').eq( $indexCurrentTab-1 ).length )
			$(context).addClass 'disabled'

		if $indexCurrentTab + direction < 1
			$(context).closest('.btn-group').find('a.prev-btn').addClass 'disabled'
		else
			$(context).closest('.btn-group').find('a.prev-btn').removeClass 'disabled'


	$(".target-markets").on 'click','.next-btn', -> slideTargetMarket +1, this
	$(".target-markets").on 'click','.prev-btn', -> slideTargetMarket -1, this 

	# default value for .prev-btn
	$(".target-markets .prev-btn").addClass 'disabled'

	$(".target-markets").on 'click','.nav-tabs li', ->
		if $(this).index() > 0
			$(".target-markets .btn-group.np-controls").hide()
		else
			$(".target-markets .btn-group.np-controls").show()
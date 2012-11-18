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
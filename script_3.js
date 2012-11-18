function createNewPeropery () {
	if ( $('.property .select2').val() && $('.properties input').filter('.text').val() ) {

		$('.properties').before(
			$('.form-horizontal').find('div').eq(0).clone().addClass('new-property')
		);

		$newProperty = $('.form-horizontal').find('.new-property');

		$newPropertyInput = $('.form-horizontal').find('.new-property').last().find('input');
		$newPropertyLabel = $('.form-horizontal').find('.new-property').last().find('label');
		
		$newProperty.last().append(	$("<input>", {'type':'hidden'}) );
		$newProperty.last().find('input').last()
			.attr({
					'name' : 'property[]',
					'value': $('.property .select2').val()
			});

		$newPropertyLabel.attr({
			'for': 'property'+ $('.property .select2').val()
		});
		$newPropertyLabel.text( $('.property .select2').find('option[value='+ $('.property .select2').val()  +']').text() );

		$newPropertyInput.attr({
			'id': 'property'+ $('.property .select2').val(),
			'name': 'property_value[]'
		});

		$newPropertyInput.text( $('.properties input').filter('.text').val() );
		$newPropertyInput.attr({'value': $('.properties input').filter('.text').val() });

		$('.properties input').filter('.text').val('');

		$('.property .select2 option[value='+ $('.property .select2').val() +']').remove();

		$('.property .select2').select2("val", "");
	}
}

$('.addProperty').on('click', function(e){
	createNewPeropery();
});
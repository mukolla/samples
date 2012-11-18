<section class="form-part">
	<div id="metrics-tabs">
		<header>
			<h3></h3>
			<ul>
				<li><a href="#fragment-manufacture" data-original-title="Manufacture Questions" class="tooltip-info"><span></span></a></li>
				<li><a href="#fragment-retailer" data-original-title="Retailer Questions" class="tooltip-info"><span></span></a></li>
				<li><a href="#fragment-servicer" data-original-title="Servicer Questions" class="tooltip-info"><span></span></a></li>
				<li><a href="#fragment-wholesaler" data-original-title="Wholesaler Questions" class="tooltip-info"><span></span></a></li>
			</ul>
		</header>

		<div class="content">
			<u>Last Fiscal Yearend Totals</u>

			<div  class="metrics-content-tabs" id="fragment-manufacture">
				<div class="metrics-right-info-block">
					<ul>
						<li>Gross Profit Margin = </li>
						<li>Qutput Quality = </li>
						<li>Lead Time =</li>
					</ul>
				</div>
				<label class="field">
					<span>Sales:</span>
					<input name="m_sales" type="text" class="textfield">
				</label>
				...
			</div>

			<div class="metrics-content-tabs" id="fragment-retailer">
				<div class="metrics-right-info-block">
					<ul>
						<li>Gross Profit Margin = </li>
						<li>Inventory Turnover = </li>
					</ul>
				</div>
				<label class="field">
					<span>Sales:</span>
					<input name="r_sales" type="text" class="textfield">
				</label>
				...
			</div>

			<div class="metrics-content-tabs servicer" id="fragment-servicer">
				<div class="metrics-right-info-block">
					<ul>
						<li>Gross Profit Margin = </li>
						<li>Response Time = </li>
						<li>Budget Adherence = </li>
					</ul>
				</div>
				<label class="field">
					<span>Sales:</span>
					<input name="s_sales" type="text" class="textfield">
				</label>
				<label class="field">
					<span>Cost of Good Sold:</span>
					<input name="s_cost" type="text" class="textfield">
				</label>
				....
			</div>

			<div class="metrics-content-tabs" id="fragment-wholesaler">
				...
			</div>
		</div>
	</div>
</section>

<div class="block-buttons">
	<button class="btn btn-primary btn-fixed">Save</button>	
	<a href="#" class="prev-metrics-tabs">Previons</a>
	<a href="#" class="next-metrics-tabs">Next</a>
</div>
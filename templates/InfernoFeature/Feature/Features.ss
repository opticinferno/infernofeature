<div class="row justify-content-center">
<div class="col-md-10">
<table class="table table-responsive table-striped table-bordered">
	
<!--Setup the headers-->
<% if AmountFeatures = 2 %>
	<tr class="headersAlocated">
	<th>
		<p>$FeatureText</p>
	</th>
	<th>
		<p>$FirstFeature</p>
	</th>
	<th>
		<p>$SecondFeature</p>
	</th>
	</tr>
	<% if FirstFeatureExtra || SecondFeatureExtra %>
	<tr class="headersAlocated">
	<th>
		
	</th>
	<th>
		<p>$FirstFeatureExtra</p>
	</th>
	<th>
		<p>$SecondFeatureExtra</p>
	</th>
	</tr>
	<% end_if %>
	<% loop getFeatures %>
		<tr>
			<td><p>$RowName</p></td>
			<td class="features"><% if $FirstTick = 2 %><span class="fa fa-check"></span> <% else_if $FirstTick = 3 %>$FirstText<% else_if $FirstTick = 1 %><span class="fa fa-times"></span> <% else %><% end_if %></td>
			<td class="features"><% if $SecondTick = 2 %><span class="fa fa-check"></span> <% else_if $SecondTick = 3 %>$SecondText<% else_if $SecondTick = 1 %><span class="fa fa-times"></span> <% else %><% end_if %></td>
		</tr>
	<% end_loop %>
<% end_if %>
	
	
	
	
<% if AmountFeatures = 3 %>
	<tr class="headersAlocated">
	<th>
		<p>$FeatureText</p>
	</th>
	<th>
		<p>$FirstFeature</p>
	</th>
	<th>
		<p>$SecondFeature</p>
	</th>
	<th>
		<p>$ThirdFeature</p>
	</th>
	</tr>
	<% if FirstFeatureExtra || SecondFeatureExtra || ThirdFeatureExtra %>
	<tr class="headersAlocated">
	<th>
	
	</th>
	<th>
		<p>$FirstFeatureExtra</p>
	</th>
	<th>
		<p>$SecondFeatureExtra</p>
	</th>
	<th>
		<p>$ThirdFeatureExtra</p>
	</th>
	</tr>
	<% end_if %>
	<% loop getFeatures %>
		<tr>
			<td><p>$RowName</p></td>
			<td class="features"><% if $FirstTick = 2 %><span class="fa fa-check"></span> <% else_if $FirstTick = 3 %>$FirstText<% else_if $FirstTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>
			<td class="features"><% if $SecondTick = 2 %><span class="fa fa-check"></span> <% else_if $SecondTick = 3 %>$SecondText<% else_if $SecondTick = 1 %><span class="fa fa-times"></span> <% else %><% end_if %></td>
			<td class="features"><% if $ThirdTick = 2 %><span class="fa fa-check"></span> <% else_if $ThirdTick = 3 %>$ThirdText<% else_if $ThirdTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>

		</tr>
	<% end_loop %>
<% end_if %>
<% if AmountFeatures = 4 %>
	<tr class="headersAlocated">
	<th>
		<p>$FeatureText</p>
	</th>	
	<th>
		<p>$FirstFeature</p>
	</th>
	<th>
		<p>$SecondFeature</p>
	</th>
	<th>
		<p>$ThirdFeature</p>
	</th>
	<th>
		<p>$FourthFeature</p>
	</th>
	</tr>
	<% if $FirstFeatureExtra || SecondFeatureExtra || ThirdFeatureExtra || FourthFeatureExtra %>
		<tr class="headersAlocated">
	<th>
		
	</th>	
	<th>
		<p>$FirstFeatureExtra</p>
	</th>
	<th>
		<p>$SecondFeatureExtra</p>
	</th>
	<th>
		<p>$ThirdFeatureExtra</p>
	</th>
	<th>
		<p>$FourthFeatureExtra</p>
	</th>
	</tr>
		<% end_if %>
	<% loop getFeatures %>
		<tr>
			<td><p>$RowName</p></td>
			<td class="features"><% if $FirstTick = 2 %><span class="fa fa-check"></span> <% else_if $FirstTick = 3 %>$FirstText<% else_if $FirstTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>
			<td class="features"><% if $SecondTick = 2 %><span class="fa fa-check"></span> <% else_if $SecondTick = 3 %>$SecondText<% else_if $SecondTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>
			<td class="features"><% if $ThirdTick = 2 %><span class="fa fa-check"></span> <% else_if $ThirdTick = 3 %>$ThirdText<% else_if $ThirdTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>
			<td class="features"><% if $FourthTick = 2 %><span class="fa fa-check"></span> <% else_if $FourthTick = 3 %>$FourthText<% else_if $FourthTick = 1 %><span class="fa fa-times"></span> <% else %> <% end_if %></td>
		</tr>
	<% end_loop %>
<% end_if %>
	<% if AmountFeatures %>
		<% if AmountFeatures = 2 %>
			<tr><td></td>
			<td><a class="btn btn-red" href="$FirstFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$SecondFeatureLink">Enquire</a></td>
			</tr>
		<% end_if %>
		<% if AmountFeatures = 3 %>
			<tr><td></td>
			<td><a class="btn btn-red" href="$FirstFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$SecondFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$ThirdFeatureLink">Enquire</a></td>
			</tr>
		<% end_if %>
		<% if AmountFeatures = 4 %>
			<tr><td></td>
			<td><a class="btn btn-red" href="$FirstFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$SecondFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$ThirdFeatureLink">Enquire</a></td>
			<td><a class="btn btn-red" href="$FourthFeatureLink">Enquire</a></td>
			</tr>
		<% end_if %>
	<% end_if %>
</table>
			</div>
			</div>
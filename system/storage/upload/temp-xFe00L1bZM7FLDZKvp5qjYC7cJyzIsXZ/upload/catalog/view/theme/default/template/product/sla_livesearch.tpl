<?php if ($sla_live_search_ajax_enable) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/sla_live_search.css" />
<script type="text/javascript"><!--
	var sla_live_search = {
		selector: '<?php echo $sla_live_search_selector; ?>',
	}

	$(document).ready(function() {
		var html = '';
		html += '<div id="live-search">';
		html += '	<ul>';
		html += '	</ul>';
		html += '   <div class="result-text"></div>';
		html += '</div>';

		//$(sla_live_search.selector).parent().closest('div').after(html);
		$(sla_live_search.selector).after(html);

		$(sla_live_search.selector).autocomplete({
			'source': function(request, response) {
				var search = $(sla_live_search.selector).val();
				var sla_live_search_min_length = '<?php echo (int)$sla_live_search_min_length; ?>';
				if (search.length < sla_live_search_min_length) {
					$('#live-search').css('display','none');
				} else {
					$.ajax({
						url: 'index.php?route=product/sla_live_search&search=' +  encodeURIComponent(search),
						dataType: 'html',
						success: function(result) {
							$('#live-search').html(result);
							$('#live-search').css('display','block');
						}
					});
				}
			},
		});

		$(document).bind( "mouseup touchend", function(e){
		  var container = $('#live-search');
		  if (!container.is(e.target) && container.has(e.target).length === 0)
		  {
		    container.hide();
		  }
		});
	});
//--></script>
<?php } ?>
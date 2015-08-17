{*<!-- {[The file is published on the basis of YetiForce Public License that can be found in the following directory: licenses/License.html]} --!>*}
<nav>						
	<ul class="pagination">
		<li class="{if $PAGE_NUMBER eq 1} disabled {/if} pageNumber firstPage" data-id="1" >
			<span aria-hidden="true">{vtranslate('LBL_FIRST', $MODULE)}</span>
			</a>
		</li>
		<li class="{if !$PAGING_MODEL->isPrevPageExists() OR $PAGE_NUMBER eq 1} disabled {/if}" id="listViewPreviousPageButton">
			<span aria-hidden="true">&laquo;</span>
			</a>
		</li>	
		{if $PAGE_COUNT neq 0}
			{assign var=PAGIN_TO value=$START_PAGIN_FROM+4}
			{for $PAGE_INDEX=$START_PAGIN_FROM to $PAGIN_TO}
				<li class="pageNumber {if $PAGE_NUMBER eq $PAGE_INDEX} active {/if}" data-id="{$PAGE_INDEX}"><a>{$PAGE_INDEX}</a></li>
				{if $PAGE_INDEX eq $PAGE_COUNT}
					{break}
					{assign var=END_ON_LAST value=1}
				{/if}
			{/for}
			{if $PAGE_INDEX <= $PAGE_COUNT && $PAGE_COUNT > 5}
				<li {if $PAGE_COUNT eq 1} disabled {/if} >
					<a id="dLabel" data-target="#" data-toggle="dropdown" role="button" aria-expanded="true">
						...
					</a>
					<ul class="dropdown-menu listViewBasicAction" aria-labelledby="dLabel" id="listViewPageJumpDropDown">
						<li>
							<div>
								<div class="col-md-3 recentComments textAlignCenter pushUpandDown2per"><span>{vtranslate('LBL_PAGE',$moduleName)}</span></div>
								<div class="col-md-3 recentComments">
									<input type="text" id="pageToJump" class="listViewPagingInput textAlignCenter form-control" title="{vtranslate('LBL_LISTVIEW_PAGE_JUMP')}" value="{$PAGE_NUMBER}"/>
								</div>
								<div class="col-md-2 recentComments textAlignCenter pushUpandDown2per">
									{vtranslate('LBL_OF',$moduleName)}
								</div>
								<div class="col-md-2 recentComments pushUpandDown2per textAlignCenter" id="totalPageCount">{$PAGE_COUNT}</div>
							</div>
						</li>
					</ul>
				</li>
			{/if}
			{if $PAGE_INDEX+1 <= $PAGE_COUNT}
				<li class="pageNumber {if $PAGE_NUMBER eq $PAGE_COUNT} active {/if}" data-id="{$PAGE_COUNT}"><a>{$PAGE_COUNT}</a></li>
					{/if}
				{/if}

		<li class="{if (!$PAGING_MODEL->isNextPageExists()) or ($PAGE_NUMBER eq $PAGE_COUNT)} disabled {/if}" id="listViewNextPageButton">
			<span aria-hidden="true">&raquo;</span>
		</li>
		<li class="{if $PAGE_NUMBER eq $PAGE_COUNT or (!$PAGING_MODEL->isNextPageExists())} disabled {/if} pageNumber lastPage" data-id="{$PAGE_COUNT}" >
			<span aria-hidden="true">{vtranslate('LBL_LAST', $MODULE)}</span>
			</a>
		</li>
	</ul>
	<ul class="pageInfo pull-right">	
		<li>
			<span>
				<span class="pageNumbersText" style="padding-right:5px">{if $LISTVIEW_ENTRIES_COUNT}{$PAGING_MODEL->getRecordStartRange()} 
					{vtranslate('LBL_to', $MODULE)} {$PAGING_MODEL->getRecordEndRange()}{else}<span>&nbsp;</span>{/if} ({$LISTVIEW_COUNT})</span>
			</span>
		</li>
	</ul>
</nav>


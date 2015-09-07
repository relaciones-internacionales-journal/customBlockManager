{**
 * plugins/generic/customBlockManager/block.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Sidebar menu -- "Custom" block.
 *
 *}
 
{if $privateBlockOption =='1'}
	{if $isUserLoggedIn}
		<div class="block custom" id="{$customBlockId}">
			{$customBlockContent}
		</div>
	{/if}

{elseif $privateBlockOption =='0' || is_null($privateBlockOption)}
	<div class="block custom" id="{$customBlockId}">
		{$customBlockContent}
	</div>
{/if}
 
 
 





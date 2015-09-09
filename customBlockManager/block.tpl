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
 
{if $privateBlockOption}
	
	{if array_intersect($privateBlockOption, $roles)}
		{if $isUserLoggedIn}
			<div class="block custom" id="{$customBlockId}">
				{$customBlockContent}
			</div>
		{/if}
	{/if}

{elseif is_null($privateBlockOption)}
	<div class="block custom" id="{$customBlockId}">
		{$customBlockContent}
	</div>
{/if}

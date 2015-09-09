{**
 * plugins/generic/customBlockManager/editCustomBlockForm.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Form for editing a custom sidebar block
 *
 *}
{assign var="pageTitle" value="plugins.generic.customBlock.editContent"}
{include file="common/header.tpl"}
<br />
<form method="post" id="editCustomBlockForm" action="{plugin_url path="save"}" >
{include file="common/formErrors.tpl"}
{if count($formLocales) > 1}
<div id="locales">
<table width="100%" class="data">
	<tr valign="top">
		<td width="20%" class="label">{fieldLabel name="formLocale" key="form.formLanguage"}</td>
		<td width="80%" class="value">
			{plugin_url|assign:"editCustomBlockFormUrl" page="manager" op="plugin" path="edit" escape=false}
			{form_language_chooser form="editCustomBlockForm" url=$editCustomBlockFormUrl}
			<span class="instruct">{translate key="form.formLanguage.description"}</span>
		</td>
	</tr>
</table>
</div>
{/if}
<br />
<table class="data" width="100%">
	<tr>
		<td width="20%" class="label" valign="top">{fieldLabel required="true" name="blockContent" key="plugins.generic.customBlock.content"}</td>
		<td>
		<textarea name="blockContent[{$formLocale|escape}]" cols="30" rows="30">{$blockContent[$formLocale]|escape}</textarea>
		</td>
	</tr>
</table>

<hr/>
<p><strong>{translate key="plugins.generic.customBlock.makePrivate"}:</strong></p>
<input type="checkbox" value="siteAdmin" name="privateBlock[]" {if 'siteAdmin'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.siteAdmin"}
<input type="checkbox" value="manager" name="privateBlock[]" {if 'manager'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.managers"}
<input type="checkbox" value="editor" name="privateBlock[]" {if 'editor'|array_search:$privateBlock !== false} checked="checked" {/if}/>{translate key="user.role.editors"}
<input type="checkbox" value="sectionEditor" name="privateBlock[]" {if 'sectionEditor'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.sectionEditors"} 
{if $roleSettings.useLayoutEditors}
	<input type="checkbox" value="layoutEditor" name="privateBlock[]" {if 'layoutEditors'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.layoutEditors"} 
{/if}
{if $roleSettings.useCopyeditors}
	<input type="checkbox" value="copyeditor" name="privateBlock[]" {if 'copyeditors'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.copyeditors"} 
{/if}
{if $roleSettings.useProofreaders}
	<input type="checkbox" value="proofreader" name="privateBlock[]" {if 'proofreaders'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.proofreaders"}
{/if}
<input type="checkbox" value="reviewer" name="privateBlock[]" {if 'reviewers'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.reviewers"}
<input type="checkbox" value="author" name="privateBlock[]" {if 'authors'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.authors"} 
<input type="checkbox" value="reader" name="privateBlock[]" {if 'reader'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.readers"} 
<input type="checkbox" value="subscriptionManager" name="privateBlock[]" {if 'subscriptionManagers'|array_search:$privateBlock !== false} checked="checked" {/if} />{translate key="user.role.subscriptionManagers"}

<p><input type="submit" value="{translate key="common.save"}" class="button defaultButton" />
<input type="button" value="{translate key="common.cancel"}" class="button" onclick="document.location.href='{plugin_url path="settings"}'" /></p>

</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>

{include file="common/footer.tpl"}

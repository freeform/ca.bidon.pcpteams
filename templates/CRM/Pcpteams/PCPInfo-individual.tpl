{if $validDate}
  <div id="civicrm-pcpteams-pcpinfo-team-info">
    <div id="civicrm-pcpteams-pcpinfo-team-actions">
        <a href="{crmURL p="civicrm/contribute/transact" q="reset=1&id=`$pcp.page_id`&pcpId=`$pcp.id`"}" class="btn btn-primary"><span>{ts}Donate!{/ts}</span></a>
    </div>
  </div>
{/if}

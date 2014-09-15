{if $pcp_id_parent}
  <div id="civicrm-pcpteams-pcpinfo-team-info">
    <div id="civicrm-pcpteams-pcpinfo-team-name">
      <h3>
        {ts}This member page belongs to a team:{/ts} {$pcp.pcp_id|pcpteams_getteamname}
      </h3>
    </div>
    <div id="civicrm-pcpteams-pcpinfo-team-summary">
      <h5>{$pcp_members|@count} {ts} members{/ts}</h5>
      <p>{$pcpteams_team.intro_text}</p>
    </div>
    <div id="civicrm-pcpteams-pcpinfo-team-actions">
      <a class="button contribute-button" href="{crmURL p="civicrm/pcp/info" q="reset=1&id=`$pcp_id_parent`&component=contribute"}"><span>{ts}Visit team page{/ts}</span></a>
      <a class="button contribute-button" href="{crmURL p="civicrm/pcp/campaign" q="action=add&reset=1&component=contribute&pageId=`$pcpteams_team.page_id`&pcp_team_id=`$pcpteams_team.id`"}"><span>{ts}Join this team{/ts}</span></a>
    </div>
  </div>
{/if}

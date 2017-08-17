<h2>Donate through one of our team members</h2>
<table class="civicrm-pcpteams-members">
<tbody>
  <tr>
    <th class="civicrm-pcpteams-members-title">{ts}Members of{/ts} {$pcp.title}</th>
    <th class="civicrm-pcpteams-members-amount">{ts}Raised{/ts}</th>
  </tr>
{foreach from=$pcp_members key=x item=member}
  {if $member.is_active}
  <tr>
    <td class="civicrm-pcpteams-members-title"><a href="{crmURL p="civicrm/pcp/info" q="reset=1&component=contribute&id=`$x`"}">{$member.title}</a></td>
    <td class="civicrm-pcpteams-members-amount">{$member.amount|crmMoney}</td>
  </tr>
  {/if}
{foreachelse}
  <tr>
    <td colspan="2" class="civicrm-pcpteams-members-none">{ts}No team member pages yet.{/ts}</td>
  </tr>
{/foreach}
</table>
<div class="civicrm-pcpteams-pcpinfo-team-actions">
  <a class="btn btn-primary" href="{crmURL p="civicrm/pcp/campaign" q="action=add&reset=1&component=contribute&pageId=`$pcp.page_id`&pcp_team_id=`$pcp.id`"}">{ts}Join this team{/ts}</a>
</div>

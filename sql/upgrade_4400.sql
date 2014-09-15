-- Add column for new member notifications
ALTER TABLE `civicrm_pcp_team` ADD COLUMN `notify_on_new_member` tinyint(4) unsigned NOT NULL COMMENT 'Send an e-mail to PCP page owner on new team member.';

--
-- Message templates for additional e-mail notifications
--

INSERT INTO civicrm_option_value (option_group_id, {localize field='label'}label{/localize}, {localize field='description'}description{/localize}, value, name, weight)
VALUES (
  (SELECT id from civicrm_option_group where name = 'msg_tpl_workflow_contribution')
, {localize}'Contributions - PCP Teams - New Team Members - Notification to PCP owner'{/localize}
, {localize}'Sends an e-mail notification to the Team PCP owner when a new member joins the team.'{/localize}
, (SELECT MAX(ROUND(op.value)) + 1 FROM civicrm_option_value op WHERE op.option_group_id  = @option_group_id_contribution)
, 'pcpteams_notification_new_member'
, (SELECT MAX(weight) + 1 from civicrm_option_value where option_group_id=@option_group_id_contribution)
);

{fetch assign=text file="$extDir/message_templates/pcpteams_notification_new_team_member_text.tpl"}
{fetch assign=html file="$extDir/message_templates/pcpteams_notification_new_team_member_html.tpl"}

INSERT INTO civicrm_msg_template (msg_title, msg_subject, msg_text, msg_html, workflow_id, is_default, is_reserved)
VALUES ('Contributions - PCP Teams - New team member notification to PCP owner', '{literal}{$pcpName}{/literal}: new team member'
, '{$text|escape:"quotes"}', '{$html|escape:"quotes"}'
, (SELECT MAX(id) FROM civicrm_option_value WHERE option_group_id = (SELECT id from civicrm_option_group where name = 'msg_tpl_workflow_contribution'), 1, 0);



{ts 1=$displayName}Dear %1{/ts},

{ts}A new member has joined your Team campaign page:{/ts}

* {ts}First Name:{/ts} {$memberFirstName}
* {ts}Last Name:{/ts} {$memberLastName}
* {ts}E-mail:{/ts} {$memberEmail}

{capture assign=loginUrl}{crmURL p='user' a=true fe=1 h=1}{/capture}
{ts}This is an automatic message. You may disable these notifications by changing your page settings:{/ts}
$loginUrl

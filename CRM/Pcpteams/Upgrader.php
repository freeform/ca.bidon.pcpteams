<?php

/**
 * Collection of upgrade steps
 */
class CRM_Pcpteams_Upgrader extends CRM_Pcpteams_Upgrader_Base {

  // By convention, functions that look like "function upgrade_NNNN()" are
  // upgrade tasks. They are executed in order (like Drupal's hook_update_N).

  /**
   * Run an external SQL script when the module is installed
   */
  public function install() {
    $this->executeSqlFile('sql/pcpteams-install.sql', TRUE);
  }

  /**
   * Run an external SQL script when the module is uninstalled
   */
  public function uninstall() {
    $this->executeSqlFile('sql/pcpteams-uninstall.sql');
  }

  /**
   * Example: Run a simple query when a module is enabled
   */
  public function enable() {
    // CRM_Core_DAO::executeQuery('UPDATE foo SET is_active = 1 WHERE bar = "whiz"');
  }

  /**
   * Example: Run a simple query when a module is disabled
   */
  public function disable() {
    // CRM_Core_DAO::executeQuery('UPDATE foo SET is_active = 0 WHERE bar = "whiz"');
  }

  /**
   * Example: Run a couple simple queries
   *
   * @return TRUE on success
   * @throws Exception
   */
  public function upgrade_4200() {
    $this->ctx->log->info('Applying update 4200');
    $this->executeSqlFile('sql/upgrade_4200.sql', TRUE);
    return TRUE;
  }

}

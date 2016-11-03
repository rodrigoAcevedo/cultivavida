<?php

use Phinx\Migration\AbstractMigration;

class CreateRequestsTable extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-abstractmigration-class
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change()
    {
      $table = $this->table('requests');
      $table->addColumn('idClient', 'integer')
            ->addColumn('idService', 'integer')
            ->addColumn('description', 'text')
            ->addColumn('cost', 'float')
            ->addColumn('requested', 'datetime')
            ->addColumn('started', 'datetime')
            ->addColumn('finished','datetime')
            ->create();

            $refTable = $this->table('requests');
            $refTable->addForeignKey('idClient', 'Clients', 'id', array('delete' => 'CASCADE', 'update'=>'NO_ACTION'))
                    ->addForeignKey('idService', 'Services', 'id', array('delete' => 'CASCADE', 'update'=>'NO_ACTION'))
                    ->update();
    }
}

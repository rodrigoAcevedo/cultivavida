<?php

use Phinx\Migration\AbstractMigration;

class CreateBuysTable extends AbstractMigration
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
      $table = $this->table('buys');
      $table->addColumn('idClient', 'integer')
            ->addColumn('idProduct', 'integer')
            ->addColumn('cost', 'integer')
            ->addColumn('quantity', 'integer')
            ->addColumn('requested', 'datetime')
            ->addColumn('delivered','datetime')
            ->create();

            $refTable = $this->table('buys');
            $refTable->addForeignKey('idClient', 'Clients', 'id', array('delete' => 'CASCADE', 'update'=>'NO_ACTION'))
                    ->addForeignKey('idProduct', 'Products', 'id', array('delete' => 'CASCADE', 'update'=>'NO_ACTION'))
                    ->update();
    }
}

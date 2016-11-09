<?php

use Phinx\Migration\AbstractMigration;
use Cake\Auth\DefaultPasswordHasher;

class CreateAdmin2SeedMigration extends AbstractMigration
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
     public function up()
     {
       $faker = \Faker\Factory::create();
       $populator = new Faker\ORM\CakePHP\Populator($faker);

       $populator->addEntity('Users', 1, [
         'name' => 'rodo',
         'email' => 'rodo@gmail.com',
         'password' => function()
         {
           $hasher = new DefaultPasswordHasher();
           return $hasher->hash('clave');
         },
         'role' => 'admin',
         'active' => 1,
         'created' => function() use ($faker) {
           return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
         },
         'modified' => function() use ($faker) {
           return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
         }
       ]);

       $populator->execute();
     }
}

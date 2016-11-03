<?php

use Phinx\Migration\AbstractMigration;

class CreateClientsSeedMigration extends AbstractMigration
{
  public function up()
  {
    $faker = \Faker\Factory::create();
    $populator = new Faker\ORM\CakePHP\Populator($faker);

    $populator->addEntity('Clients', 100, [
      'name' => function() use ($faker) {
        return $faker->name();
      },
      'email' => function() use ($faker) {
        return $faker->safeEmail();
      },
      'telephone' => '45820138',
      'direction' => function() use ($faker) {
        return $faker->address();
      },
      'active' => function() {
        return rand(0,1);
      },
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

<?php

use Phinx\Migration\AbstractMigration;

class CreateProductsSeedMigration extends AbstractMigration
{
    public function up()
    {
      $faker = \Faker\Factory::create();
      $populator = new Faker\ORM\CakePHP\Populator($faker);

      $populator->AddEntity('Products', 1, [
        'name' => 'Product 1',
        'description' => 'Description of Product 1',
        'price' => 100,
        'category' => 'plants',
        'created' => function() use ($faker) {
          return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
        },
        'modified' => function() use ($faker) {
          return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
        }
      ]);

      $populator->AddEntity('Products', 1, [
        'name' => 'Product 2',
        'description' => 'Description of Product 2',
        'price' => 125,
        'category' => 'plants',
        'created' => function() use ($faker) {
          return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
        },
        'modified' => function() use ($faker) {
          return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now');
        }
      ]);

      $populator->AddEntity('Products', 1, [
        'name' => 'Product 3',
        'description' => 'Description of Product 3',
        'price' => 500,
        'category' => 'plants',
        'imageURL' => 'img/img.jpg',
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

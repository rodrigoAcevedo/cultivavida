<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Buys Controller
 *
 * @property \App\Model\Table\BuysTable $Buys
 */
class BuysController extends AppController
{
  public function buy($id = null)
  {
    // Para harcodear cosas

    $this->loadModel('Products');
    $this->loadModel('Users');

    $buy = $this->Buys->newEntity();

    $user = $this->Auth->user('id');
    $product = $this->Products->get($id);

    $buy = $this->Buys->PatchEntity($buy, $this->request->data);

    $buy->idClient = $user;
    $buy->idProduct = $product['id'];
    // Todo harcodeado
    $buy->cost = 100;
    $buy->quantity = 1;
    //$buy->requested = function() use ($faker) { return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now'); };
    //$buy->delivered = function() use ($faker) { return $faker->dateTimeBetween($startDate = 'now', $endDate = 'now'); };
    //$buy->requested = date("Y-m-d H:i:s");
    //$buy->delivered = date("Y-m-d H:i:s");
    if( $this->Buys->save($buy) )
    {
      $this->Flash->success('Has comprado con éxito!');
      return $this->redirect(['controller' => 'Products', 'action' => 'index']);
    }
    else
    {
      $this->Flash->error($buy->idClient.', '.$buy->idProduct);
      return $this->redirect(['controller' => 'Products', 'action' => 'index']);
    }
    $this->set(compact('buy'));
  }
}

<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Requests Controller
 *
 * @property \App\Model\Table\RequestsTable $Requests
 */
class RequestsController extends AppController
{
  public function request($id = null)
  {
    // Para harcodear cosas

    $this->loadModel('Services');
    $this->loadModel('Users');

    $request = $this->Requests->newEntity();

    $user = $this->Auth->user('id');
    $service = $this->Services->get($id);

    $request = $this->Requests->PatchEntity($request, $this->request->data);

    $request->idClient = $user;
    $request->idService = $service['id'];
    // Todo harcodeado
    $request->cost = 100;
    $request->description = "desc";
    $request->requested = date("Y-m-d H:i:s");
    $request->started = date("Y-m-d H:i:s");
    $request->finished = date("Y-m-d H:i:s");
    if( $this->Requests->save($request) )
    {
      $this->Flash->success('Has comprado con éxito!');
      return $this->redirect(['controller' => 'Services', 'action' => 'index']);
    }
    else
    {
      $this->Flash->error($request->idClient.', '.$request->idService);
      return $this->redirect(['controller' => 'Services', 'action' => 'index']);
    }
    $this->set(compact('request'));
  }
}

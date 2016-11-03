<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Clients Controller
 *
 * @property \App\Model\Table\ClientsTable $Clients
 */
class ClientsController extends AppController
{
  public function index()
  {
    $clients = $this->paginate($this->Clients);
    $this->set( 'clients', $clients );
  }

  public function view($name)
  {
    echo 'Cliente: '.$name;
    exit();
  }

  public function add()
  {
    echo 'Añadir cliente';
    exit();
  }

}

<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Services Controller
 *
 * @property \App\Model\Table\ServicesTable $Services
 */
class ServicesController extends AppController
{
  public function index()
  {
    $services = $this->paginate($this->Services);
    $this->set('services', $services);
  }

  public function view($name)
  {
    echo "Servicio ".$name;
    exit();
  }

  public function add()
  {
    $service = $this->Services->newEntity();

    if($this->request->is('post'))
    {
      $service = $this->Services->patchEntity($service, $this->request->data);
      if($this->Services->save($service))
      {
        $this->Flash->success('El servicio se agrego exitosamente');
        return $this->redirect(['controller' => 'services', 'action' => 'index']);
      } else {
        $this->Flash->error('No se ha podido cargar el servicio');
      }
    }
    $this->set(compact('service'));
  }

  public function edit($id = null)
  {
    $service = $this->Services->get($id);

    if($this->request->is(['patch', 'post', 'put']))
    {
      $service = $this->Services->patchEntity($service, $this->request->data);
      if($this->Services->save($service))
      {
        $this->Flash->success('Servicio modificado exitosamente');
        return $this->redirect(['action' => 'index']);
      } else {
        $this->Flash->error('No se ha podido modificar el servicio');
      }
      $this->set(compact('service'));
    }
  }

  public function delete($id = null)
  {
    $this->request->allowMethod(['post', 'delete']);
    $service = $this->Services->get($id);

    if($this->Services->delete($service))
    {
      $this->Flash->success('El servicio ha sido dado de baja');
    } else {
      $this->Flash->error('No se ha podido eliminar el servicio. Intente nuevamente');
    }
    return $this->redirect(['action' => 'index']);
  }

}

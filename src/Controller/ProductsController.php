<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Products Controller
 *
 * @property \App\Model\Table\ProductsTable $Products
 */
class ProductsController extends AppController
{

  public function index()
  {
    $products = $this->paginate($this->Products);
    $this->set('products', $products);
  }

  public function view($name)
  {
    echo 'Producto: '.$name;
    exit();
  }

  public function add()
  {
    $product = $this->Products->newEntity();

    if($this->request->is('post'))
    {
      $product = $this->Products->patchEntity($product, $this->request->data);
      if($this->Products->save($product))
      {
        $this->Flash->success('El producto se agrego con éxito');
        return $this->redirect(['controller' => 'Products', 'action' => 'index']);
      } else {
        $this->Flash->error('No se ha podido cargar el producto, por favor intente nuevamente');
      }
    }
    $this->set(compact('product'));
  }

  public function edit($id = null)
  {
    $product = $this->Products->get( $id );

    if($this->request->is(['patch', 'post', 'put']))
    {
      $product = $this->Products->patchEntity($product, $this->request->data);
      if($this->Products->save($product))
      {
        $this->Flash->success('Producto modificado exitosamente');
        return $this->redirect(['action' => 'index']);
      } else {
        $this->Flash->error('No se ha podido modificar el producto');
      }
    }

    $this->set( compact('product') );
  }

  public function delete($id = null)
  {
    $this->request->allowMethod(['post', 'delete']);
    $product = $this->Products->get($id);

    if($this->Products->delete($product))
    {
      $this->Flash->success('El producto ha sido eliminado');
    } else {
      $this->Flash->error('No se ha podido eliminar el producto. Intente nuevamente');
    }
    return $this->redirect(['action' => 'index']);
  }
}

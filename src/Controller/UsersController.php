<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 */
class UsersController extends AppController
{
  public function index()
  {
    $users = $this->paginate($this->Users);
    $this->set( 'users', $users );
  }

  public function view($name)
  {
    echo 'Usuario: '.$name;
    exit();
  }

  public function add()
  {
    $user = $this->Users->newEntity();

    if( $this->request->is( 'post' ) )
    {
      $user = $this->Users->patchEntity( $user, $this->request->data );

      if( $this->Users->save($user) )
      {
        $this->Flash->success('Usuario agregado correctamente');
        return $this->redirect(['controller' => 'Users', 'action' => 'index']);
      } else {
        $this->Flash->error('El usuario no ha podido ser creado');
      }
    }

    $this->set(compact('user'));
  }

  public function edit($id = null)
  {
    $user = $this->Users->get( $id );

    if($this->request->is(['patch', 'post', 'put']))
    {
      $user = $this->Users->patchEntity($user, $this->request->data);
      if($this->Users->save($user))
      {
        $this->Flash->success('Usuario modificado exitosamente');
        return $this->redirect(['action' => 'index']);
      } else {
        $this->Flash->error('No se ha podido modificar el usuario. Intente nuevamente');
      }
    }

    $this->set( compact('user') );
  }

  public function delete($id = null)
  {
    $this->request->allowMethod(['post', 'delete']);
    $user = $this->Users->get($id);

    if($this->Users->delete($user))
    {
      $this->Flash->success('El usuario ha sido eliminado');
    } else {
      $this->Flash->error('No se ha podido eliminar al usuario. Intente nuevamente');
    }
    return $this->redirect(['action'=>'index']);
  }
}

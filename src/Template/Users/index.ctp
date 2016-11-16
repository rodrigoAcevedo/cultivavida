<div class="row">
  <div class="col-md-12">
    <div class="page-header">
      <h2>Usuarios</h2>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('name', ['Nombre']) ?></th>
            <th><?= $this->Paginator->sort('email') ?></th>
            <th>Activo</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $users as $user ): ?>
          <tr>
            <td><?= $this->Number->format($user->id) ?></td>
            <td><?= h($user->name) ?></td>
            <td><?= h($user->email) ?></td>
            <td><?= h($user->active) ?></td>
            <td>
              <?= $this->Html->link('Ver', ['action' => 'view', $user->id], ['class' => 'btn btn-small btn-info']) ?>
              <?= $this->Html->link('Editar', ['action' => 'edit', $user->id], ['class' => 'btn btn-small btn-primary ']) ?>
              <?= $this->Form->postLink('Borrar', ['action' => 'delete', $user->id], ['confirm' => 'Eliminar usuario?', 'class' => 'btn btn-small btn-danger']) ?>
            </td>
          </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>

    <div class="paginator">
      <ul class="pagination">
        <?= $this->Paginator->prev('< Anterior') ?>
        <?= $this->Paginator->numbers(['before' => '', 'after' => '']) ?>
        <?= $this->Paginator->next('Siguiente >') ?>
      </ul>
      <p><?= $this->Paginator->counter() ?></p>
    </div>
  </div>
</div>

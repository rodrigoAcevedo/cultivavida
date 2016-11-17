<?php if($current_user['role'] == 'admin'): ?>
<div class="row">
  <div class="col-md-12">
    <div class="page-header">
      <h2>Servicios</h2>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('name', ['Nombre']) ?></th>
            <th>Imagen</th>
            <th>Acciones</th>
            <th>Comprar</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $services as $service ): ?>
            <tr>
              <td><?= $this->Number->format($service->id) ?></td>
              <td><?= h($service->name) ?></td>
              <td><img src="<?php echo '../' . $service->dir . $service->imageURL ?>" width="42" height="42"></td>
              <td>
                <?= $this->Html->link('Ver', ['action' => 'view', $service->id], ['class' => 'btn btn-small btn-info']) ?>

                <?= $this->Html->link('Editar', ['action' => 'edit', $service->id], ['class' => 'btn btn-small btn-primary ']) ?>
                <?= $this->Form->postLink('Borrar', ['action' => 'delete', $service->id], ['confirm' => 'Eliminar servicio?', 'class' => 'btn btn-small btn-danger']) ?>

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
<?php else: ?>
<div class="container">
  <div class="page-header">
    <h2>Servicios</h2>
  </div>
  <div class="row">
    <?php foreach( $services as $service ): ?>
    <div class="col-md-3 service-box">
      <img src="<?php echo '../' . $service->dir . $service->imageURL ?>" class="img-circle img-responsive">
      <h3><?= h($service->name) ?></h3>
      <p><?= h($service->description) ?></p>
      <div class="service-buttons">
        <?= $this->Html->link('Ver', ['action' => 'view', $service->id], ['class' => 'btn btn-small btn-info']) ?>
        <?= $this->Html->link('Comprar', ['controller' => 'Buys', 'action' => 'buy', $service->id], ['confirm' => 'Seguro quieres comprar '.$service->name.'?', 'class' => 'btn btn-small btn-success']) ?>
      </div>
    </div>
    <?php endforeach; ?>
  </div>
</div>
<?php endif; ?>

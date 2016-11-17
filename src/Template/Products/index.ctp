<?php if($current_user['role'] == 'admin'): ?>
<div class="row">
  <div class="col-md-12">
    <div class="page-header">
      <h2>Productos</h2>
    </div>
    <div class="table-responsive">
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('name', ['Nombre']) ?></th>
            <th><?= $this->Paginator->sort('price') ?></th>
            <th><?= $this->Paginator->sort('category') ?></th>
            <th>Imagen</th>
            <th>Acciones</th>
            <th>Comprar</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach( $products as $product ): ?>
            <tr>
              <td><?= $this->Number->format($product->id) ?></td>
              <td><?= h($product->name) ?></td>
              <td><?= $this->Number->format($product->price) ?></td>
              <td><?= h($product->category) ?></td>
              <td><img src="<?php echo '../' . $product->dir . $product->imageURL ?>" width="42" height="42"></td>
              <td>
                <?= $this->Html->link('Ver', ['action' => 'view', $product->id], ['class' => 'btn btn-small btn-info']) ?>

                <?= $this->Html->link('Editar', ['action' => 'edit', $product->id], ['class' => 'btn btn-small btn-primary ']) ?>
                <?= $this->Form->postLink('Borrar', ['action' => 'delete', $product->id], ['confirm' => 'Eliminar usuario?', 'class' => 'btn btn-small btn-danger']) ?>

              </td>
              <td><?= $this->Html->link('Comprar', ['controller' => 'Buys', 'action' => 'buy', $product->id], ['confirm' => 'Seguro quieres comprar '.$product->name.'?', 'class' => 'btn btn-small btn-success']) ?></td>
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
      <h2>Productos</h2>
    </div>
    <div class="row">
      <?php foreach( $products as $product ): ?>
      <div class="col-md-3 product-box">
        <img src="<?php echo '../' . $product->dir . $product->imageURL ?>" class="img-circle img-responsive">
        <h3><?= h($product->name) ?></h3>
        <p><?= h($product->description) ?></p>
        <div class="product-buttons">
          <?= $this->Html->link('Ver', ['action' => 'view', $product->id], ['class' => 'btn btn-small btn-info']) ?>
          <?= $this->Html->link('Comprar', ['controller' => 'Buys', 'action' => 'buy', $product->id], ['confirm' => 'Seguro quieres comprar '.$product->name.'?', 'class' => 'btn btn-small btn-success']) ?>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
  </div>
<?php endif; ?>

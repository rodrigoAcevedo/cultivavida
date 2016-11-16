<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <div class="page-header">
      <h2>Crear usuario</h2>
    </div>
    <?= $this->Form->create($user) ?>
    <fieldset>
      <?php
        echo $this->Form->input('name', ['label' => 'Nombre']);
        echo $this->Form->input('email');
        echo $this->Form->input('password', ['label' => 'clave']);
        echo $this->Form->input('role', ['options' => ['admin' => 'Administrador', 'user' => 'Usuario'], 'label' => 'rol']);
        echo $this->Form->input('active', ['label' => 'activo']);
      ?>
    </fieldset>
    <?= $this->Form->button('Crear') ?>
    <?= $this->Form->end() ?>
  </div>
</div>

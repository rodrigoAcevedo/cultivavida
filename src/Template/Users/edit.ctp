<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Users'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Buys'), ['controller' => 'Buys', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Buy'), ['controller' => 'Buys', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="users form large-9 medium-8 columns content">
    <?= $this->Form->create($user) ?>
    <fieldset>
        <legend><?= __('Edit User') ?></legend>
        <?php
            echo $this->Form->input('name');
            echo $this->Form->input('email');
            echo $this->Form->input('password', ['value' => '']);
            echo $this->Form->input('role', ['options' => ['admin' => 'Administrador', 'user' => 'Usuario']]);
            echo $this->Form->input('active');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Edit')) ?>
    <?= $this->Form->end() ?>
</div>

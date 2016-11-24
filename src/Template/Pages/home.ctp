<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
use Cake\Cache\Cache;
use Cake\Core\Configure;
use Cake\Core\Plugin;
use Cake\Datasource\ConnectionManager;
use Cake\Error\Debugger;
use Cake\Network\Exception\NotFoundException;

$this->layout = false;

if (!Configure::read('debug')):
    throw new NotFoundException('Please replace src/Template/Pages/home.ctp with your own version.');
endif;

$cakeDescription = 'Cultiva vida';
?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?= $cakeDescription ?>
    </title>
    <?= $this->Html->meta('icon') ?>
    <?= $this->Html->css('bootstrap.min') ?>
    <?= $this->Html->css('style') ?>
    <?= $this->Html->script(['jquery-3.1.1.min', 'bootstrap.min']) ?>
</head>
<body>
  <?= $this->element('menu') ?>
  <?= $this->Flash->render() ?>
    <div class="container-fluid" style="margin-top:-20px">
      <div id="main-section">
        <div class="container">
          <h1>Bienvenido a Cultiva Vida!</h1>
        </div>
      </div>
      <div id="section-2">
        <div class="container">
          <h2>Bienvenidos a Cultiva Vida</h2>
          <div class="row">
            <div class="col-md-6">
              <p>Cultiva Vida  es una empresa que se dedicará al paisajismo. Se comercializarán servicios de diseño/ejecución de jardines, terrazas y balcones. La impronta de Cultiva Vida es vincular a los paisajes con un entorno sustentable. Hacer jardines “eco-friendly” teniendo en cuenta las emergencias ecológicas actuales.</p>
            </div>
            <div class="col-md-6">
              <p>Será una empresa familiar manejada por dos personas. María Victoria Navarro, al cargo de la lógistica y planificación de los servicios de jardinería y paisajismo, diseño y ejecución de paisajes. Rodrigo Acevedo al cargo de la toma de pedidos, comunicación, negocios y marketing en internet y redes sociales.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>

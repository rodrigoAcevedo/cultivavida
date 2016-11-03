<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Buy Entity
 *
 * @property int $id
 * @property int $idClient
 * @property int $idService
 * @property int $cost
 * @property int $quantity
 * @property \Cake\I18n\Time $requested
 * @property \Cake\I18n\Time $delivered
 */
class Buy extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];
}

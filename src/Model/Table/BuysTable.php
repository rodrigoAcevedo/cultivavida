<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Buys Model
 *
 * @method \App\Model\Entity\Buy get($primaryKey, $options = [])
 * @method \App\Model\Entity\Buy newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Buy[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Buy|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Buy patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Buy[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Buy findOrCreate($search, callable $callback = null)
 */
class BuysTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('buys');
        $this->displayField('id');
        $this->primaryKey('id');
        $this->belongsTo('Clients', [
          'className' => 'Clients'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->integer('id')
            ->allowEmpty('id', 'create');

        $validator
            ->integer('idClient')
            ->requirePresence('idClient', 'create')
            ->notEmpty('idClient');

        $validator
            ->integer('idProduct')
            ->requirePresence('idProduct', 'create')
            ->notEmpty('idProduct');

        $validator
            ->integer('cost')
            ->requirePresence('cost', 'create')
            ->notEmpty('cost');

        $validator
            ->integer('quantity')
            ->requirePresence('quantity', 'create')
            ->notEmpty('quantity');

        return $validator;
    }
}

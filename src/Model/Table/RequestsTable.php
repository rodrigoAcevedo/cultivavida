<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Requests Model
 *
 * @method \App\Model\Entity\Request get($primaryKey, $options = [])
 * @method \App\Model\Entity\Request newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Request[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Request|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Request patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Request[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Request findOrCreate($search, callable $callback = null)
 */
class RequestsTable extends Table
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

        $this->table('requests');
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
            ->integer('idService')
            ->requirePresence('idService', 'create')
            ->notEmpty('idService');

        $validator
            ->requirePresence('description', 'create')
            ->notEmpty('description');

        $validator
            ->numeric('cost')
            ->requirePresence('cost', 'create')
            ->notEmpty('cost');

        $validator
            ->dateTime('requested')
            ->requirePresence('requested', 'create')
            ->notEmpty('requested');

        $validator
            ->dateTime('started')
            ->requirePresence('started', 'create')
            ->notEmpty('started');

        $validator
            ->dateTime('finished')
            ->requirePresence('finished', 'create')
            ->notEmpty('finished');

        return $validator;
    }
}

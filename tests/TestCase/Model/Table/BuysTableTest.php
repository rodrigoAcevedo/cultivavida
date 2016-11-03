<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\BuysTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\BuysTable Test Case
 */
class BuysTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\BuysTable
     */
    public $Buys;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.buys'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Buys') ? [] : ['className' => 'App\Model\Table\BuysTable'];
        $this->Buys = TableRegistry::get('Buys', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Buys);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}

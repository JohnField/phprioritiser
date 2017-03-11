<?php

class PHPrioritiserTest extends PHPUnit_Framework_TestCase
{
    public function testSetFoo()
    {
        $obj = new PHPrioritiser\PHPrioritiser();
        dump($obj);
        $foo = 'bar';
        $obj->setFoo('bar');
        $this->assertSame($foo, $obj->getFoo());
    }
}

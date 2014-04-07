<?php

use Zend\Mvc\Application;

chdir(dirname(__DIR__));

require __DIR__ . '/../vendor/autoload.php';

Application::init(require __DIR__ . '/../config/application.config.php')->run();

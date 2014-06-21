<?php

namespace MyDoctrineAuth\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Authentication\AuthenticationServiceInterface;

class AuthController extends AbstractActionController
{
    protected $authService;
   
    public function __construct(AuthenticationServiceInterface $authService)
    {
        $this->authService = $authService;
    }
    
    public function loginAction()
    {
        //you can grab this data from the Form in real life app
        $data['login'] = 'admin@admin.com'; 
        $data['password'] = 'admin';
        
        $authService = $this->getServiceLocator()->get('Zend\Authentication\AuthenticationService');

        $adapter = $authService->getAdapter();
        $adapter->setIdentityValue($data['login']);
        $adapter->setCredentialValue($data['password']);
        $authResult = $authService->authenticate();
    
        if ($authResult->isValid()) {
            echo 'login succeded';
        } else {
            echo 'login failed';
        }
        
        die;

    }
}

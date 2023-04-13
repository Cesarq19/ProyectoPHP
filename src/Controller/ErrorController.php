<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ErrorController extends AbstractController
{
    /**
     * @Route("/error/403")
     */
    public function error403(): Response
    {
        $html = $this->render('error/error403.html.twig');
        return new Response($html, 403);
    }
}

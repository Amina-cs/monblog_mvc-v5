<?php
require
'Modele.php';
try{
$billets =
getBillets(); 
} catch(Exception $e){
$msgErreur = $e->getMessage();
require 'vueErreur.php';}
require './vueacceuil.php';  




?>
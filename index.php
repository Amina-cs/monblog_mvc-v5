<?php
require
'modele.php';
try{
$billets =
getBillets();
foreach ($billets as $billet) {
        $idBillet = $billet['id'];
        $commentairesParBillet[$idBillet] = getCommentaires($idBillet);
    }
} catch(Exception $e){
$msgErreur = $e->getMessage();
require 'vueErreur.php';}
require './vueacceuil.php';  



?>
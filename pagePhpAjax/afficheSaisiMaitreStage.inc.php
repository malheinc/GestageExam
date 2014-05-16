<?php

    $db=mysql_connect('localhost','root','joliverie');
    mysql_select_db('Gestage',$db);
   echo'<form>';
    // création du contenue du tableau :
   echo'<select type="select" name="civMaitreStage" id="civMaitreStage">';
   echo'<option value="Madame" Selected>Madame</option>';
   echo'<option value="Monsieur" Selected>Monsieur</option>'; 
   echo'</select>'; 
   echo'<label>Nom</label><input type="text" name="nomMaitreStage" id="nomMaitreStage" value="" ></input>';
   echo'<label>Prénom</label><input type="text" name="prenomMaitreStage" id="prenomMaitreStage" value="" ></input>';
   
   echo'<label>Numéro Téléphone</label><input type="tel" name="telMaitreStage" id="telMaitreStage" value="" ></input>';
   echo'<label>Numéro Portable</label><input type="tel" name="telPortMaitreStage" id="telPortMaitreStage" value="" ></input>';
   echo'<label>Adresse Mail</label><input type="mail" name="mailMaitreStage" id="mailMaitreStage" value="" ></input>';
   echo'</form>'; 
?>
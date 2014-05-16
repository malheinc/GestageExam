
<?php

    $db=mysql_connect('localhost','root','joliverie');
    mysql_select_db('Gestage',$db);
    
    // création du contenue du tableau :
   echo '<label>Date de début de stage</label><input type="date"  name="dateDebut" id="dateDebut" value="" ></input><br/>';
   echo '<label>Date de fin de stage</label><input type="date"  name="dateFin" id="dateFin" value="" ></input><br/>';
   echo '<label>Date de viste</label><input type="date"  name="dateVisite" id="dateVisite" value="" ></input><br/>';
   echo '<label>Ville</label><input type="varchar" lenght="128" name="villeStage" id="villeStage" value="" ></input><br/>';
   echo '<label>Divers</label><input type="varchar" lenght="128" name="Divers" id="Divers" value="" ></input><br/>';
   echo '<label>Bilan Travaux</label><input type="varchar" lenght="255" name="BilanTravaux" id="BilanTravaux" value="" ></input><br/>';
   echo '<label>Ressources et outils</label><input type="varchar" lenght="255" name="RessourcesOutils" id="RessourcesOutils" value="" ></input><br/>';
   echo '<label>Commentaires</label><input type="varchar" lenght="255" name="Commentaires" id="Commentaires" value="" ></input><br/>';


   //echo '<label>Adresse entreprise</label><input type="text"  name="ads" id="ads" value="" ></input><br/>';
   
//   echo '<input type="submit" value="Sauvegarder" OnClick="return validerS()"/><br/>';
//   echo '<input type="button" value="Retour" onclick="history.go(-1)">';

?>
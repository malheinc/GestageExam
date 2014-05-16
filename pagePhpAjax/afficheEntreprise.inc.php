<?php
    // connection à la base de données
    $db=mysql_connect('localhost','root','joliverie');
    mysql_select_db('Gestage',$db);
    //instentiation des données
    $chaine='';
    //récupération des données envoyées par jQuery
    if(isset($_GET['value'])){
        $chaine=$_GET['value'];
    }

    //début de la création du select
    echo'<label for="option">Entreprise :</label>';
    echo'<select type="select" name="choixEntreprise" id="choixEntreprise">';
    echo'<option value="0" Selected></option>';
        
    $requet="SELECT * FROM ORGANISATION ;"; // requête pour récupérer les données option
    $requetExe=mysql_query($requet);

    While ($data=mysql_fetch_assoc($requetExe)) {
        echo'<option value='.$data['IDORGANISATION'].'>'.$data['NOM_ORGANISATION'].'</option>';  
    }
    echo'</select>' ;  
          
?>
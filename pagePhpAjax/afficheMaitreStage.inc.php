<?php
    // connection à la base de donées
    $db=mysql_connect('localhost','root','joliverie');
    mysql_select_db('Gestage',$db);
    //instentiation des données
    $idEnt='';
    //récupération des données envoyées par jQuery
    if(isset($_GET['value'])){
        $idEnt=$_GET['value'];
    }

    //début de la création du select
    echo'<label for="option">Maître de stage :</label>';
    echo'<select type="select" name="choixMaitreStage" id="choixMaitreStage">';
    echo'<option value="" Selected></option>';
        
    $requet="SELECT P.IDPERSONNE, P.NOM, P.PRENOM FROM PERSONNE P
             INNER JOIN CONTACT_ORGANISATION CO ON CO.IDCONTACT = P.IDPERSONNE
             WHERE CO.IDORGANISATION =".$idEnt." ;";
    
    $requetExe=mysql_query($requet);

    While ($data=mysql_fetch_assoc($requetExe)) {
        echo'<option value='.$data['IDPERSONNE'].'>'.$data['NOM'].' '.$data['PRENOM'].'</option>';  
    }
    echo'</select>' ; 
    
    echo '<input id="boutonMaitreStage" type="button" value="Ajouter un maître de stage" OnClick="return saisieMaitreStage()" ></input>';   
    echo '<br/>';
?>
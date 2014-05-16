<?php
        //Connection à la base de données 
        $db=mysql_connect('localhost','root','joliverie');
        mysql_select_db('Gestage',$db);
        //Instantiation des variable
        $classe='';
        $option='';
        //Récupération des variables envoyées par jquery
        if(isset($_GET['value1'])){
        $classe=$_GET['value1'];
            }
        if(isset($_GET['value2'])){
        $option=$_GET['value2'];
            }
        //Requête pour récupérer le contenue du tableau
             $requet="SELECT P.NOM, P.PRENOM, O.NOM_ORGANISATION, S.VILLE, S.DATEDEBUT, S.DATEFIN, S.DATEVISITESTAGE
                        FROM STAGE S
                        INNER JOIN PERSONNE P ON S.IDETUDIANT = P.IDPERSONNE
                        INNER JOIN ORGANISATION O ON S.IDORGANISATION = O.IDORGANISATION
                            WHERE P.ETUDES='".$classe."' AND P.IDSPECIALITE='".$option."' ;";
             $requetExe=mysql_query($requet); 
             
            // création du contenue du tableau :
            echo'<TABLE BORDER="1" CELLPADDING="8">';
            echo'<tr><th>Nom </th><th>Prenom </th><th>Organisation </th><th>Ville </th><th>Date début </th><th>Date fin </th><th>Date visite </th></tr>';
            While ($data=mysql_fetch_assoc($requetExe))  { //boucle de ligne du tableau
                      
                   echo'<tr><th>'.$data['NOM'].'</th><th>'.$data['PRENOM'].'</th><th>'.$data['NOM_ORGANISATION'].'</th><th>'.$data['VILLE'].'</th>
                       <th>'.$data['DATEDEBUT'].'</th><th>'.$data['DATEFIN'].'</th><th>'.$data['DATEVISITESTAGE'].'</th></tr>';            
            }
            echo'</TABLE>';
        ?>

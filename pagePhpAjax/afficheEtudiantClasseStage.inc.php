
        <?php
        //connection à la base de donnée 
        $db=mysql_connect('localhost','root','joliverie');
        mysql_select_db('Gestage',$db);
        //instantiation des variable
        $classe='';
        $option='';
        //récupération des variable envoyer par jquery
        if(isset($_GET['value1'])){
        $classe=$_GET['value1'];
            }
        if(isset($_GET['value2'])){
        $option=$_GET['value2'];
            }
            
        $requet="SELECT * FROM PERSONNE WHERE ETUDES='".$classe."' AND IDSPECIALITE='".$option."' ;"; // requete pour récupérer le contenue  du tableau
        $requetExe=mysql_query($requet);      
        // création du contenue du select :
        echo'<label>choix élève</label>';
        echo'<select type="select" name="choixEleve" id="choixEleve">';
        echo'<option value="" Selected></option>';
        While ($data=mysql_fetch_assoc($requetExe))  { //boucle de ligne du tableau
                      
             echo'<option value="'.$data['IDPERSONNE'].'">'.$data['NOM'].' '.$data['PRENOM'].'</option>';   
                   
        }
        echo"</select>";
        //echo"<input type='submit' action='.?controleur=utilisateur&action=ajoutStageEtapeEntreprise' value='passer à la 2eme étapes'></input>"
        
        ?>

<?php

function afficheClasse($chaine){
   //connection à la base de donnée 
   $db=mysql_connect('localhost','root','joliverie');
   mysql_select_db('Gestage',$db);
   $result=array(); 
   $requet="SELECT * FROM CLASSE WHERE NUMFILIERE='".$chaine."' 
            GROUP BY NOMCLASSE
            ORDER BY NOMCLASSE DESC ;";//création de la requête
   
   $requetExe=mysql_query($requet);//récupération du contenue de la requête
   while($data=mysql_fetch_assoc($requetExe))
        {
         //$result[]=$data['NOMCLASSE'];
         $result[]=$data;
        }
   return $result;
        
}
?>

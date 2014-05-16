//--------------------------- AJAX AJOUT STAGE -----------------------------//

     //affiche les classes selon les études selectionnées 
     jQuery(document).ready(function($){
         $('#etudes').change(function() {
             var value='';
             value=$('#etudes').val();
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheClasse.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#FormulaireClasse").html('').html(retour);
                   }
               }); 
         });
      });
      
      //affiche les options des selon les études selectionnées
      jQuery(document).ready(function($){
         $('#etudes').change(function() {
             var value='';
             value=$('#etudes').val();
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheOption.inc.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#FormulaireOption").html('').html(retour);
                   } 
               });
         });
      });
      
      //affiche les etudiant d'une classe pour l'ajout d'un stage'
      jQuery(document).ready(function($){
         $('#boutonAffichageEleveStage').click(function() {
             
             var value1='';
             value1=$('#classe').val(); //NOMCLASSE
             var value2='';
             value2=$('#option').val(); //IDSPECIALITE
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheEtudiantClasseStage.inc.php",
                   data:"value1="+value1+"&value2="+value2,
                   
                   success: function(retour){
		   $("#FormulaireEtudiantClasseStage").html('').html(retour);
                   }
               });    
         });
      });
      
      // affiche les entreprises
      jQuery(document).ready(function($){
         $('#FormulaireEtudiantClasseStage').change(function() {
             var value='';
             value=$('#FormulaireEtudiantClasseStage').val();
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheEntreprise.inc.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#FormulaireEntrepriseStage").html('').html(retour);
                   }
               });      
         });
      });      

      // affiche les maîtres de stage
      jQuery(document).ready(function($){
         $('#FormulaireEntrepriseStage').change(function() {
             var value='';
             value=$('#choixEntreprise').val();
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheMaitreStage.inc.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#FormulaireMaitreStage").html('').html(retour);
                   }
               });      
         });
      });
      

     
      //affiche le formulaire d'ajout des infos stage
      jQuery(document).ready(function($){
         $('#FormulaireEntrepriseStage').change(function() {
             var value='';
             value=$('FormulaireEntrepriseStage').val(); //Pas utile
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheFormulaireStage.inc.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#FormulaireStage").html('').html(retour);
                   }                   
               });
         });
      });
      
      
//--------------------------- FIN AJOUT STAGE -----------------------------//      
      
      
      //affiche les étudiants d'une classe pour l'admin'
      jQuery(document).ready(function($){
         $('#boutonAffichageEleve').click(function() {
             
             var value1='';
             value1=$('#classe').val(); //NOMCLASSE
             var value2='';
             value2=$('#option').val(); //IDSPECIALITE
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheEtudiantClasse.inc.php",
                   data:"value1="+value1+"&value2="+value2,
                   
                   success: function(retour){
		   $("#FormulaireEtudiantClasse").html('').html(retour);
                   }
               });
         });
      });
      
      //affiche les entreprises par critères
      jQuery(document).ready(function($){
         $('#vChoix').click(function() {
             
             var value1='';
             value1=$('#type').val();
             var value2='';
             value2=$('#ville').val();
             var value3='';
             value3=$('#fj').val();
             if((value1=='null')&&(value2=='null')&&(value3=='null')){
                alert("veuillez choisir au moins 1 critére!");
             }else{
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficherEntrepriseCrit.inc.php",
                   data:"value1="+value1+"&value2="+value2+"&value3="+value3,
                   
                   success: function(retour){
		   $("#tableau").html('').html(retour);
                   }
               });
             }     
         });
      });
      
      //Fonction Jquery affichage des information entreprise'
      jQuery(document).ready(function($){
         $('#entreprise').change(function() {
             var value='';
             value=$('#entreprise').val();
             
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/informationEntreprise.inc.php",
                   data:"value="+value,
                   
                   success: function(retour){
		   $("#formulaireEntreprise").html('').html(retour);
                   }
               });      
         });
      });

      //Affiche les stages d'une classe
      jQuery(document).ready(function($){
         $('#boutonAffichageStage').click(function() {
             
             var value1='';
             value1=$('#classe').val(); //NOMCLASSE
             var value2='';
             value2=$('#option').val(); //IDSPECIALITE
            $.ajax({
                   type:"GET",
                   url:"../pagePhpAjax/afficheStage.inc.php",
                   data:"value1="+value1+"&value2="+value2,
                   
                   success: function(retour){
		   $("#FormulaireAfficheStage").html('').html(retour);
                   }
               });
         });
      });
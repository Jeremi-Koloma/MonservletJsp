/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//OPTENIR les éléments dans le fichier Accueil.jsp;
const btnListe = document.querySelector('.bouttonListeJs');
const blockDisplay = document.querySelector('.listPersonCover');
const closeBlock = document.querySelector('.btnClose');
const flux = document.querySelector('.flux');

      //Au click du bouton voire la liste, affichage;
      btnListe.addEventListener('click', function(){
        blockDisplay.classList.remove('hidden');
        flux.classList.remove('hidden');
        }, false);
        //Au click du bouton voire la liste, Fermeture;
      closeBlock.addEventListener('click', function(){
        blockDisplay.classList.add('hidden');
        flux.classList.add('hidden');
        }, false);
     
        
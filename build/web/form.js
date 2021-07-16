/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function myfunction(){
    if (confirm("Press ok to continue..")) {
    window.alert("Action completed succesfully!!")
    window.location = "mainpage.html";
  } else {
      window.location = "self_form.html";
    
  }
        
}
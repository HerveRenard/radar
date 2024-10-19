class Rvalidator{
  static String? validateEmail(String? value){
    if(value== null || value.isEmpty){
      return "L'email est requis.";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{3,4}$');
    if(!emailRegex.hasMatch(value)){
      return 'Email invalide';
    }
    return null;
  } 

  static String? validatePassword(String? value){
    if(value== null || value.isEmpty){
      return "Le mot de passe est requis.";
    }
    
    if(value.length < 6){
      return 'Le mot de passe doit avoir au moins 8 caractères';
    }
    return null;
  } 

  static String? validateNumber(String? value){
    if(value== null || value.isEmpty){
      return "Le Numeros est requis.";
    }
    RegExp regex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
    if(regex.hasMatch(value)){
      return 'Format Incorrect (10 caractères requis)';
    }
    return null;
  } 

  static String? validateFirstName(String? value){
    if(value== null || value.isEmpty){
      return "Le Nom est requis.";
    }
    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
    if(regex.hasMatch(value)){
      return 'Le Nom doit avoir au moins (2 caractères requis)';
    }
    return null;
  } 

  static String? validateLastName(String? value){
    if(value== null || value.isEmpty){
      return "Le Prenom est requis.";
    }
    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
    if(regex.hasMatch(value)){
      return 'Le Prenom doit avoir au moins (2 caractères requis)';
    }
    return null;
  } 

  static String? validateAdresse(String? value){
    if(value== null || value.isEmpty){
      return "L'Adresse est requis.";
    }
    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
    if(regex.hasMatch(value)){
      return 'L\'Adresse doit avoir au moins (2 caractères requis)';
    }
    return null;
  } 

  static String? validateVille(String? value){
    if(value== null || value.isEmpty){
      return "La Ville est requis.";
    }
    RegExp regex = RegExp(r'^[a-z A-Z]+.{2,}$');
    if(regex.hasMatch(value)){
      return 'La Ville doit avoir au moins (2 caractères requis)';
    }
    return null;
  } 

}
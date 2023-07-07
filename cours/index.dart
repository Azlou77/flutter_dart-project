void main() {
  // déclaration d'une chaîne de caractère
  String  name = "Louis";
  print(name);
  
  // déclaration d'un entier
  int age = 23;
  
  // déclaration d'un double
  double doubleage =  46;
  
  // déclaration d'un booléen
  bool isMaj = true;
  
  /* Map<String,int> famille = {
    "PERE":50,
    "MERE": 45,
    "SOEUR": 21,
  }; */
    
    // déclaration d'une tableau
    List tableau = [4,7,8];
  
    // déclaration d'un dictionnaire
    Map<String,dynamic> famille = {
    "PERE":50,
    "MERE": 45,
    "SOEUR": 21,
    "CHAT":"Je ne connais pas son age humain"
  };
  print (famille);
  print (famille["MERE"]); 
  
  Droit rights = Droit.invite;
}
enum Droit {administrateur, etudiant, invite, professeur}


// déclaration optionnel
String ?? adresse = ['Paris',] 'Marseille', 'Caen';
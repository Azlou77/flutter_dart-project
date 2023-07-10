
class Utilisateur {
    late String uid;
    late String nom;
    late String prenom,
    late String email;
    String? telephone;
    String? avatar;
    List? favoris;

    // Get fullname
    String get fullName{
    return prenom + "" + nom;
    }

    // constructor
    Utilisateur.vide(){
    uid = "";
    nom ="";
    prenom="";
    }
}
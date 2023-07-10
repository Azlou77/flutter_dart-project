
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

    Utilisateur(DocumentSnapshot snapshot){
        uid = snapshot.id;
        
        // dicotionnary = Map<String,dynamic>
        Map<String,dynamic>map = snapshot.data() as Map<String,dynamic>;
        nom = map["NOM"];
        prenom = map["PRENOM"];
        email = map["EMAIL"]; 

        // Add provisonials variables
        // Provionnal telephone
        String ? provisoireTel = map["TELEPHONE"];
        if (provisoireTel != null){
            telephone = defaultTel;
        }
        else {
            telephone = provisoireTel;
        }

        // Provionnal avatar
        String ? provisoireAvatar = map["AVATAR"];
        if (provisoireAvatar == null){
            avatar = defaultAvatar;
        }
        else {
            avatar = provisoireAvatar;
        }

        // Provionnal favoris
        List ? provisoireFavoris = map["FAVORIS"];
        if (provisoireFavoris == null){
            favoris = [];
        }
        else {
            favoris = provisoireFavoris;
        }

        // Provionnal pseudo
        String ? provisoirePseudo = map["PSEUDO"];
        if (provisoirePseudo == null){
            pseudo = defaultPseudo;
        }
        else {
            pseudo = provisoirePseudo;
        }
    }
}
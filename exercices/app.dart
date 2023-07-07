/* Exercice make an app Flutter dart width
    - 1 Image
    - 1 Text
    - 1 email field
    - 1 password field
    - 1 button  */


class _MyHomePageState extends State<MyHomePage> {


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          const Images(
          image: NetworkImage('https://s2.qwant.com/thumbr/474x266/c/8/f187c10a03093415719d2feb55fb7a6992a3be66735c4c4e7ec3a9bd380455/th.jpg?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.fqZ9-PPqcG_cm0k3JfoINQHaEK%26pid%3DApi&q=0&b=1&p=0&a=0'),
          ),
          title: Text('Bienvenue'),
          backgroundColor: Colors.red,
        ),
      );
        body: 
        // Add Text
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Louis Nguyen',
          ),
        ), 
        // Add email field
        const TextFormField(
          decoration: InputDecoration(
            hintText: 'Entrez votre email',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),

        // Add password field
        const TextFormField(
          decoration: InputDecoration(
            hintText: 'Entrez votre mot de passe',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),


        // Add button
        ElevatedButton(
          onPressed: () {
              print("j'ai cliqué");
          },
          child: const Text('Cliquez ici'),
          ),
      );

      // Animations
      // Image animation


      // Text animation


      // Email field animation


      // Password field animation


      // Button animation


      }
}



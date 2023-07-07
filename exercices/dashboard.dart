/* Redirection's page when clik on button 
   in the app.dart page */
class Dashboard extends StatefulWidget {

  // Retrieve email and password
  String email;
  String password;
 
  // Retrieve email and password
  Dashboard({Key? key, required this.email, required this.password}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {

    // Variables to get the index of the navbar
    TextEdintingController emailController = TextEditingController();
    TextEdintingController passwordController = TextEditingController();
    bool isConnected = true;

    // functions to display errors
    void popErreurs(){
        showDialog(
            // Force the user to click on the button, if not the alert will not close
            barrierDismissible: false,
            context: context,
            builder: (context){
                return AlertDialog(
                    title: Text('Erreur'),
                    content: Text('Erreurs dans votre saisie'),
                    actions:[
                        TextButton(
                            onPressed: (){
                                // Allow the user to close the alert on browser
                                Navigator.of(context).pop();
                            },
                            child: Text('OK')
                        )
                    ]

                )
            }
        )
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* Drawer is a widget that allow to create a menu
         on the left of the screen also call burger menu */
      drawer: Container(
        /* Retrieve all the height of the device 
           tablets, smartphones, TV, Desktop, PC and adapt */
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width *0.45,
        color: Colors.red,
        child: SafeArea(
            child: Column(
                children: [
                    // Add avatars circulars
                    CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://s2.qwant.com/thumbr/474x266/c/8/f187c10a03093415719d2feb55fb7a6992a3be66735c4c4e7ec3a9bd380455/th.jpg?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.fqZ9-PPqcG_cm0k3JfoINQHaEK%26pid%3DApi&q=0&b=1&p=0&a=0'),
                    ),
                    // Add first name and  last name
                    Text('Louis Nguyen'),

                    // Add pseudo
                    Text('Azlou77')

                    // Add email
                    Text('louis@gmail.com')

                ]
            )
        )
      )
      appBar: AppBar(
        // Add title ou error if password is null
        title:  Text(widget.password??"J'ai pas de mot de passe"),
        backgroundColor: Colors.red,
      ),
      /* SafeArea  is a widget that prevent the content
         to be written in the top wich is reserved for
         for icons battery, wifi, etc...  but also
         the bottom, righ and left */
      body: SafeArea(child:Text('Bienvenue sur le dashboard')),


     // Add navbar bottom
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            ),
        ],
        // Add onTap
        currentIndex: indexMenu,
        onTap: (value) {
            setState(() {
                indexMenu = value;
            });
        }
        // Add widget to change page
        Widget bodyPage(){
            swicth (index){
                case 0:
                    return Text('Home');
                case 1:
                    return Text('Business');
                case 2:
                    return Text('School');
            }
        }
        ),
    )
  }
}   

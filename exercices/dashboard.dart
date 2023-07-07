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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

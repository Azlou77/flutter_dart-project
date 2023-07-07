/* Redirection's page when clik on button 
   in the app.dart page */

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.red,
      ),
      /* SafeArea  is a widget that prevent the content
         to be written in the top wich is reserved for
         for icons battery, wifi, etc...  but also
         the bottom, righ and left */
      body: SafeArea(child:Text('Bienvenue sur le dashboard')),

     // Add navbar
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
        onTap: (int index) {
            print(index);
        },
        ),
    )
  }
}   
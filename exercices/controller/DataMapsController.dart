class DataMaps extends StatefulWidget{
    @override
    _DataMapsState createState() => _DataMapsState();
}

class _DataMapsState extends State<DataMaps>{
    @override
    Widget build (BuildContext context){
        return GoogleMap(
           onMapCreated: (controller){
            
           },
           initialCameraPosition: CameraPosition(
            
           ),
        );
    }
}
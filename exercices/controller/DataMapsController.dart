import 'package:flutter/material.dart';

    
class DataMaps extends StatefulWidget{
    @override
    _DataMapsState createState() => _DataMapsState();
}

class _DataMapsState extends State<DataMaps>{
    // Variables
    Completer<GoogleMapController> _controller = Completer();
    late CameraPosition camera;

    @override
    void initState(){
        super.initState();
        // Define camera properties
        camera = CameraPosition(
            // Get the coordonnees from the widget
            target: LatLng(widget.position.latitude, widget.position.longitude),
            // Zoom level
            zoom: 10,
        );

    }

    
    Widget build (BuildContext context){
        return GoogleMap(
           myLocationEnabled: true,
           onMapCreated: (controller){
            // Apply camera properties defined in initState
            completer.complete(controller);
           },
           initialCameraPosition: CameraPosition(
            
           ),
        );
    }
}
import 'package:permission_handler/permission_handler.dart';
class PermissionPhoto {
    init() async {
        
        PermissionStatus status = await Permission.photos.status;
        checkPermission(status);
    }

    
    Future <PermissionStatus>checkPermission(PermissionStatus status){
        // Swicth case for choices  of permission
        swicth(status){
            case PermissionStatus.permanentlyDenied: return Futur.error("Permission denied");
            case PermissionStatus.denied: return Permission.photos.request();
            case PermissionStatus.restricted: return Futur.error("Permission restricted");
            case PermissionStatus.provisional: return Permission.photos.request();
            case PermissionStatus.limited: return Futur.error("Permission limited");
            case PermissionStatus.granted: return status;

        }
    }

}
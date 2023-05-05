import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart' show JitsiMeetingOptions, FeatureFlag;
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:zoom_clone/resources/auth_methods.dart';

//import 'package:jitsi_meet_wrapper_platform_interface/feature_flag.das JitsiMeetMethods{
  class JitsiMeetMethods{
  final AuthMethods _authMethods = AuthMethods();

 void createMeeting({
  required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = '',
 }) async{
  try{
     

      var options = JitsiMeetingOptions(roomNameOrUrl: roomName,
        userDisplayName : _authMethods.user.displayName,
        userEmail : _authMethods.user.email,
        userAvatarUrl: _authMethods.user.photoURL,
        isAudioMuted : isAudioMuted,
        isVideoMuted : isVideoMuted,
        );
        

      
      await JitsiMeetWrapper.joinMeeting(options: options);
 }catch(error){
print("error: $error");
 }
}
  }
import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as https;

import '../../../model/album_model.dart';


class AlbumsController extends GetxController {

  final List<Stopwatch> stopwatches = List<Stopwatch>.generate(100, (index) => Stopwatch());
  final List<Timer?> _timers = List<Timer?>.filled(100, null);

  final List<String> timeValue = List<String>.filled(100,"00:00:00" ).obs;
  final albumList =[].obs;

  String formatTime(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    String milliseconds =
    (duration.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0');
    return '$minutes:$seconds:$milliseconds';
  }

  void startTimer(int index) {
    _timers[index] = Timer.periodic(Duration(milliseconds: 10), (timer) {
      timeValue[index] =  formatTime(stopwatches[index].elapsed);
    });
    stopwatches[index].start();
  }

  void stopTimer(int index) {
    _timers[index]!.cancel();
    stopwatches[index].stop();
  }

  void resetTimer(int index) {
    stopwatches[index].reset();
    timeValue[index] = "00:00:00";
  }

  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<GET API>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//



  @override
  void onInit() {
    super.onInit();
    albumController();
  }
  getAlbumApi() async {
    try {
      return await https.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    } catch (error) {
      print('get_test_api_repo.getAlbumApi$error');
    }
  }

  albumController() async{
    var response = await getAlbumApi();
    if (response.statusCode==200){
      var resBody= jsonDecode(response.body);

      for(var data in resBody ){
        albumList.add(AlbumModel.fromJson(data));
      }
    }else{
      print(">>>>>>>>>>>>>>GetApiController.albumController${ response.statusCode}");
    }
  }
}
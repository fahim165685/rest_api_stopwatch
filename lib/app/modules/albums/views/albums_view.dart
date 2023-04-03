import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rest_api_stopwatch/app/model/album_model.dart';
import '../controllers/albums_controller.dart';

class AlbumsView extends GetView<AlbumsController> {
  const AlbumsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Albums API',
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.albumList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.albumList.length,
            itemBuilder: (context, index) {
              AlbumModel albumModel = controller.albumList[index];
              return Column(
                children: [
                  const Divider(
                     thickness: 2,
                  ),
                  ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.3),
                      child: Text(albumModel.id.toString(),
                          style: const TextStyle(color: Colors.black)),
                    ),
                    title: Text(
                      albumModel.title.toString(),
                      maxLines: 1,
                    ),
                    subtitle: Text(albumModel.id.toString()),
                  ),
                  Obx(() =>
                  Text(controller.timeValue[index],style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ))),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.startTimer(index);
                          },
                          child: const Text(
                            "START",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            controller.stopTimer(index);
                          },
                          child: const Text(
                            "STOP",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            controller.resetTimer(index);
                          },
                          child: const Text("RESET",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)))
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              );
            },
          );
        }
      }),
    );
  }
}
/*
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const SizedBox(height: 15,),
Obx(() =>
Text(
controller.value[index],
style: TextStyle(fontSize: 40),
)),

const SizedBox(height: 5,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
ElevatedButton(
onPressed: () {
controller.startTimer(index);
},
child: const Text(
"START",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w500),
)),
ElevatedButton(
onPressed: () {
controller.stopTimer(index);
},
child: const Text(
"STOP",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w500),
)),
ElevatedButton(
onPressed: () {
controller.resetTimer(index);
},
child: const Text("RESET",
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.w500)))
],
),
],
)*/

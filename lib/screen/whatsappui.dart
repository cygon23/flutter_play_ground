import 'package:flutter/material.dart';
import 'package:flutter_play_ground/model/chatmodel.dart';
import 'package:flutter_play_ground/screen/whatsapp/call_widget.dart';
import 'package:flutter_play_ground/screen/whatsapp/camera_widget.dart';
// import 'package:flutter_play_ground/screen/whatsapp/chart_widget.dart';
import 'package:flutter_play_ground/screen/whatsapp/status_widget.dart';

class Whatsapui extends StatefulWidget {
  const Whatsapui({super.key});

  @override
  State<Whatsapui> createState() => _WhatsapuiState();
}

class _WhatsapuiState extends State<Whatsapui> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff075e54),
          actions: const [
            IconButton(onPressed: null, icon: Icon(Icons.search)),
            IconButton(onPressed: null, icon: Icon(Icons.more_vert)),
          ],
          title: const Text("Whatsapp Clone"),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const CameraWidget(),
            // CHATS TAB
            ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                final chat = dummyData[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chat.avatar),
                  ),
                  title: Text(chat.name),
                  subtitle: Text(chat.message),
                  trailing: Text(chat.time),
                );
              },
            ),
            const StatusWidget(),
            const CallWidget(),
          ],
        ),
      ),
    );
  }
}

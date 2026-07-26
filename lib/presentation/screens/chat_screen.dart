import 'package:chats_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:chats_yes_no_app/presentation/widgets/chat/other_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.ballot), poner un icono antes del titulo
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
            // backgroundImage: NetworkImage('https://scontent.fbog23-1.fna.fbcdn.net/v/t39.30808-6/482015554_1048604553952093_4676290392195460652_n.jpg?stp=dst-jpg_tt6&cstp=mx536x680&ctp=s640x640&_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=nb0ke8tkcIgQ7kNvwEZBEYs&_nc_oc=AdrMvMa3qMSif8I79pr-4fY6hZPgKl5d7lb0r99WFGABGR3FWtx6_Mm6HfK2ZhyW7Nc&_nc_zt=23&_nc_ht=scontent.fbog23-1.fna&_nc_gid=yxOKarjsuFN4BlXfLVaMZw&_nc_ss=7b289&oh=00_AQCLE4rXhcQovhfmzUUY-wZGPAUE-0XeocZW2R_65imQ1Q&oe=6A6B3544'),
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3LLPE6UHHCqhauAef4pSCOZZbjQQfhuTuPkbH2CUqEA&s=10',
            ),
          ),
        ),
        title: const Text('My love <3'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  // const _ChatView({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 50, // Replace with actual message count
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const MyMessage()
                      : const OtherMessage();
                },
              ),
            ),
            Text('Hola mi amor, estoy bien y tu?'),
          ],
        ),
      ),
    );
  }
}

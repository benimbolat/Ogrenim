import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var flp = FlutterLocalNotificationsPlugin();
  Future<void> kurulum() async {
    var androidAyari = const AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosAyari = const IOSInitializationSettings();
    var kurulumAyari = InitializationSettings(android: androidAyari, iOS: iosAyari);

    await flp.initialize(kurulumAyari, onSelectNotification: bildirimSecilme);
  }

  Future<void> bildirimSecilme(String? payLoad) async {
    if (payLoad != null) {
      print("Bildirim seçildi : $payLoad");
    }
  }

  Future<void> bildirimGoster() async {
    var androidBildirimDetay = const AndroidNotificationDetails("Kanal id", "Kanal Adi",
        channelDescription: "kanal içerik", priority: Priority.high, importance: Importance.max);

    var iosBildirimDetay = const IOSNotificationDetails();
    var bildirimDetay = NotificationDetails(android: androidBildirimDetay, iOS: iosBildirimDetay);
    await flp.show(0, "Başlık", "İçerik", bildirimDetay, payload: "Payload İçerik");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kurulum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bildirim Kullanimi"),
      ),
      body: Center(
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                bildirimGoster();
              },
              child: const Text("Bildirim Oluştur"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Gecikmeli Bildirim Oluştur"),
            ),
          ],
        ),
      ),
    );
  }
}

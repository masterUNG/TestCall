import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twilio_voice/flutter_twilio_voice.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneAction extends StatefulWidget {
  const PhoneAction({Key? key}) : super(key: key);

  @override
  _PhoneActionState createState() => _PhoneActionState();
}

class _PhoneActionState extends State<PhoneAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String phone = '+66641149903';
            String path =
                'https://a194-2405-9800-bc01-e26f-5468-43a-166f-2bc2.ngrok.io/testCall/makecall.php?isAdd=true&to_number=$phone';
            // await Dio().get(path).then((value) => print('Success Call'));

            // if (await canLaunch(path)) {
            //   await launch(path);
            // } else {}

            // await FlutterTwilioVoice.makeCall(to: "$client_identifier_or_number_to_call",
            //        accessTokenUrl: "https://${YOUR-SERVER-URL}/accesstoken");

            await FlutterTwilioVoice.makeCall(
                    accessTokenUrl: '39c25f5efd6336e88ba8a924d299a566',
                    from: '+12672141419',
                    to: phone)
                .then((value) => print('Success Call'));
          },
          child: const Text('Phone Action'),
        ),
      ),
    );
  }
}

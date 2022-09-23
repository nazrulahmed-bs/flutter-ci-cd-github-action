import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ci_cd_practice/app_style.dart';
import 'package:flutter_ci_cd_practice/constants.dart';

void main() {
  runApp(HomePage());
}

/// Home page UI
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List items = ['About', 'Contact', 'Support'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CI/CD with Flutter",
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: kIsWeb
            ? null
            : AppBar(
                title: const Text('CI/CD practice with Flutter'),
              ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const Text(
                  'Home',
                  style: AppStyle.logoTextStyle,
                ),
                ...items.map((e) => Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        e,
                        style: AppStyle.itemTextStyle,
                      ),
                    ))
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            _buildHeader(),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return kIsWeb
        ? Container(
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'CI/CD Practice',
                  style: AppStyle.logoTextStyle,
                ),
                ...items.map((e) => Text(
                      e,
                      style: AppStyle.itemTextStyle,
                    ))
              ],
            ),
          )
        : const SizedBox();
  }

  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Working with github action is fun!',
              style: AppStyle.logoTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              dummyText,
            ),
          ),
        ],
      ),
    );
  }
}

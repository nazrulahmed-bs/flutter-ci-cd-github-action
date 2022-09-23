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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: kIsWeb
            ? null
            : AppBar(
                title: const Text('CI/CD practice with GitHub Actions'),
              ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Home',
                  style: AppStyle.logoTextStyle,
                ),
              ),
              ...items.map((e) => Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 12),
                    child: Text(
                      e,
                      style: AppStyle.itemTextStyle,
                    ),
                  ))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              _buildBody(),
            ],
          ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _generateItem('Working with github action is fun!'),
        _generateItem('Firebase is awesome!'),
      ],
    );
  }

  Widget _generateItem(String title) {
    return Container(
      width: 700,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: AppStyle.logoTextStyle,
            ),
          ),
          const Padding(
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

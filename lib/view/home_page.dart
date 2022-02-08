import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/state/app_state.dart';
import 'package:pro/view/api_view.dart';
import 'package:pro/widget/first_page.dart';
import 'package:pro/widget/second_page.dart';
import 'package:provider/provider.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables,prefer_const_constructors_in_immutables, camel_case_types,prefer_const_constructors

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  // create instance of provider , it will need a context

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // 1st way
    AppState provider = Provider.of<AppState>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.updateWidget();
        },
        child: Icon(CupertinoIcons.refresh),
      ),
      appBar: AppBar(
        title: const Text('code with khari'),
      ),
      body:
          //     //  Center(
          //     //   child: Column(
          //     //     children: [
          //     //       Text('this app use provider'),
          //     //       Text('provider value is: ${provider.temp} '),
          //     //       Text('var a is : ${provider.a} '),
          //     //       Text(provider.b),
          //     //     ],
          //     //   ),
          //     // ),
          //     Consumer<AppState>(
          //   builder: (context, providerValue, child) {
          //     return Column(
          //       children: [
          //        // Text('${providerValue.temp}'),
          //        //Text('data'),
          //        Text('${providerValue.name} '),
          //         CupertinoButton(
          //             child: Text('press event'),
          //             onPressed: () {
          //               // providerValue.updateTemp(56);
          //               providerValue.getName("update after 5 sec ");
          //             }),
          //       ],
          //     );
          //   },
          // ),

      //     Consumer<AppState>(builder: (context, provider, child) {
      //   return provider.change ? SecondPage() : FirstPage();
      // }),
      ApiView()
      
    );
  }
}

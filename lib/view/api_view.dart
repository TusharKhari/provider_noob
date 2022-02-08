// ignore_for_file: prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/state/app_state.dart';
import 'package:pro/state/data_model.dart';
import 'package:pro/util/data_util.dart';
import 'package:provider/provider.dart';

class ApiView extends StatelessWidget {
  const ApiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Consumer<AppState>(
      builder: (context, provider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () async {
                List<DataModel> data = await DataUtil().getData();
                provider.updateDataModel(data);
              }),
          appBar: CupertinoNavigationBar(
              //  middle: Text('code with khari'),
              ),
          body: Container(
            height: size.height,
            width: size.width,
            child:
             provider.dataList.isEmpty
                ? Text("there is no data")
                :
                 ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${provider.dataList[index].title} "),
                      leading: Text(' ${provider.dataList[index].id} '),
                    );
                  },
                  itemCount: provider.dataList.length,
                  ),
          ),
        );
      },
    );
  }
}

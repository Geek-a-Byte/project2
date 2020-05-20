import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newapp/settings.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  fetchAllMembersData() async {
    var response;

    response = await http.post(baseURL + "view.php");
    print(response.body);
    return jsonDecode(response.body);
    //SuccessAlertBox(context: context,title: "great",messageText:response.body );
    //Navigator.pushNamed(context, '/dashboard');
    /// Navigator.pushNamed(context, '/dashboard');
    /*,style: TextStyle(fontSize: 15,color: Colors.black),*/
  }

  @override
  void initState() {
    super.initState();
    fetchAllMembersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchAllMembersData(),
          builder: (BuildContext context, AsyncSnapshot received) {
            if (!received.hasData) return CircularProgressIndicator();

            return ListView.builder(
                itemCount: received.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(received.data[index]["name"].toString()),
                    subtitle: Text(received.data[index]["email"].toString()),
                    leading: Icon(Icons.account_circle),
                  );
                });
          },
        ),
      ),
    );
  }
}

/*Column(
           children: <Widget>[
             ListTile(
               title:Text("Nazia Shehnaz"),
               subtitle: Text("Computer science and engineering, MIST"),
               leading : Icon(Icons.account_circle),
             
             )
           ],
         ),*/

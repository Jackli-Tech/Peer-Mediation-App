import 'package:Flutter_app/Model/formModel.dart';
import '../Model/SuperModels.dart';
import '../NetworkHandler.dart';
import 'package:flutter/material.dart';
import '../Pages/showForms.dart';
import 'teacherhome.dart';

class ViewForms extends StatefulWidget {
  ViewForms({Key key}) : super(key: key);

  @override
  _ViewFormsState createState() => _ViewFormsState();
}

goBack(BuildContext context) {
  Future.delayed(Duration.zero, () {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TeacherHome(),
    ));
  });
}

class _ViewFormsState extends State<ViewForms> {
  _navigateAndDisplaySelection(BuildContext context, FormModel item) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormPage(formModel: item)),
    );
    setState(() {});
  }

  bool circular = true;
  NetworkHandler networkHandler = NetworkHandler();
  SuperModel superModel = SuperModel();
  List<FormModel> data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var response = await networkHandler.get("/user/getallform-data");
    superModel = SuperModel.fromJson(response);
    setState(() {
      data = superModel.data;
      data.forEach((element) {
        print(element.id);
      });
    });
  }

  //Shows the currently available user forms in the database
  @override
  Widget build(BuildContext context) {
    return data.length > 0
        ? Material(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width,
                        minHeight: MediaQuery.of(context).size.height),
                    child: ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: data
                              .map(
                                (item) => InkWell(
                                  onTap: () {
                                    _navigateAndDisplaySelection(context, item);
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 365,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Card(
                                          elevation: 8,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 230,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                                child: Text(
                                                  item.username,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 10),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.chat_bubble,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      item.MediatorName,
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Icon(
                                                      Icons.thumb_up,
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      item.createTime,
                                                      style: TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Icon(
                                                      Icons.share,
                                                      size: 18,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Card(
                                          elevation: 15,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        : Scaffold(
            appBar: AppBar(title: Text("There are no Forms yet")),
            body: PageView(
                pageSnapping: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Center(
                    child: Text(
                      "Sorry, there are no forms yet.",
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ]));
  }
}

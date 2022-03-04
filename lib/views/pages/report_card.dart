import 'package:flutter/material.dart';
import 'package:kixat/views/customWidget/CustomAppBar.dart';
import 'package:kixat/views/pages/resultCard_detail_screen.dart';

class ReportCardScreen extends StatelessWidget {
  ReportCardScreen({Key key, this.title}) : super(key: key);
  static const routeName = '/ReportCard';

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: Text(
        "Report Card",
        style: Theme.of(context).appBarTheme.textTheme.headline6,
      )),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          Card(
            elevation: 12,
            child: customReportCard(
                context: context,
                result: customReportResult(result: ["120", "90", "91%", "A+"]),
                title: "Mothly Test Result",
                btnText: "Pass",
                buttonColor: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 12,
            child: customReportCard(
              context: context,
              result: customReportResult(result: ["450", "120", "38%", "E"]),
              title: "Mid Term Exam",
              btnText: "Pass",
              buttonColor: Colors.green,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 12,
            child: customReportCard(
                context: context,
                result: customReportResult(result: ["700", "280", "34%", "E"]),
                title: "Final Term Exam",
                btnText: "Fail",
                buttonColor: Colors.red),
          ),
        ],
      ),
    );
  }
}

customReportCard(
    {String title,
    BuildContext context,
    Color buttonColor,
    customReportResult result,
    String btnText}) {
  return Column(
    children: [
      Card(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 05, vertical: 04),
          child: ListTile(
            leading: Icon(
              Icons.chrome_reader_mode,
              size: 24,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ResultCardDetailScreen.routeName,
                      arguments: ReportCardScreen(
                        title: "Mid Term Exam From Back Class",
                      ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                ),
                child: Text(btnText)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 08,
          horizontal: 00,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customReportMenu(title: "Total"),
            customReportMenu(title: "Obtained"),
            customReportMenu(title: "Percentage"),
            customReportMenu(title: "Grade"),
          ],
        ),
      ),
      Divider(
        thickness: 2,
        indent: 10,
        endIndent: 30,
        color: Colors.grey[300],
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 08,
          right: 08,
          left: 35,
        ),
        child: result,
      ),
    ],
  );
}

customReportMenu({
  String title,
}) {
  return Text(
    title,
    textAlign: TextAlign.left,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
  );
}

class customReportResult extends StatelessWidget {
  customReportResult({
    Key key,
    this.result,
  }) : super(key: key);

  List result = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
            itemCount: result.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text(
                  result[index],
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              );
            }),
      ),
    );
  }
}

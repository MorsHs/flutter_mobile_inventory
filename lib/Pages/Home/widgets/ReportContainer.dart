import 'package:flutter/material.dart';

class ReportContainer extends StatefulWidget {
  final String name;
  final IconData iconData;
  const ReportContainer({
    super.key,
    required this.name,
    required this.iconData,
  });

  @override
  State<ReportContainer> createState() => _ReportContainerState();
}

class _ReportContainerState extends State<ReportContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.teal,
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.iconData, color: Colors.black38.withAlpha(100), size: 40),
          Text(
            widget.name,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300,),
          ),
          Text('15',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 17),),
        ],
      ),
    );
  }
}

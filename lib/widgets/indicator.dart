import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            strokeWidth: 2.0,
          ),
          SizedBox(height: 50.0,),
          Text(
            "Inachakata...", 
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black45,
              fontWeight: FontWeight.w500
            ),)
        ],
      ),
    );
  }

}
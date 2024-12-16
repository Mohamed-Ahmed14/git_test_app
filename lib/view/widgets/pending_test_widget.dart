import 'package:flutter/material.dart';

class PendingTestWidget extends StatelessWidget {
  const PendingTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text('Law Of Motion',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
          Row(
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[400]!.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text('Physics',style: TextStyle(color: Colors.deepPurple),),
              ),
              SizedBox(width: 2,),
              Icon(Icons.watch_later_outlined,color: Colors.red,),
              SizedBox(width: 2,),
              Text('1d:10H',style: TextStyle(color: Colors.red,fontSize: 16,),)
            ],
          ),

        ],
      ),
    );
  }
}

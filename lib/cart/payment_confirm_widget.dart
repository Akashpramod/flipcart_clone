import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentConfirmWidget extends StatelessWidget {
  const PaymentConfirmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/oder.jpg'),
              
            ),
           Text('Your Oder Has',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
            Text('Been Accepted',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold)),
            Text('Your item has been placed and is', style: TextStyle(color: Colors.grey[600],fontSize: 16),),
            Text("on it's way beeing to processed", style: TextStyle(color: Colors.grey[600],fontSize: 16),),
            SizedBox(height: 60,),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            
            ),
             child: Text('Track Oder',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
          ),
               SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]
          
        )
      ),
     
    );
  }
}
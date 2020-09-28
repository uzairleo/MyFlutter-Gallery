import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
// import 'package:introductionscreen_builder/BmiMode.dart';
// import 'package:introductionscreen_builder/Result.dart';
import 'package:introductionscreen_builder/main.dart';

class BmiCalculation extends StatefulWidget {
  @override
  _BmiCalculationState createState() => _BmiCalculationState();
}
//start calculating ur bmi
//age and Gender both on same page
//then weight
//then height
//then result and ondone button
//ondone navigate to next page that page is all about What u r using emojis and also have CALCULate again button


/*
The formula is BMI = kg/m2 where kg 
is a person's weight in kilograms and
 m2 is their height in metres squared
*/
//Bmi =Mass/heightinmeter       cm to m  (1m=100cm 1cm=1/100=0.01m)
 TextEditingController height=TextEditingController();
 TextEditingController weight=TextEditingController();
  // String displayResult="";

Text result(){

 int hite=int.parse(height.text.toString());
int wet=int.parse(weight.text.toString());
  int hitesquare=hite*hite;
  // double result=wet/hitesquare;
  Text res=Text("Your Bmi is ");
  return res;

} 
class _BmiCalculationState extends State<BmiCalculation> {
// static int  _groupValue=-1;

 _BmiCalculationState();
  List<PageViewModel> pages=[
  
  

    PageViewModel(
      //start calculating ur bmi page
      titleWidget: Column(
        children: <Widget>[
        SizedBox(height: 100,),
          Image(
                              height: 100,
                              width: 100,
                              image:AssetImage("images/bmi.png"),
                            ),
        ],
      ),
      // title: "",
      bodyWidget: RichText(
                          text: TextSpan(
                            text: "Start ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.normal
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Calculing your\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tBMI",
                              style: TextStyle(
                              fontSize: 25.0,
                              fontStyle: FontStyle.normal
                              // fontWeight: FontWeight.w700
                            ),
                              ),
                                                         ]
                          ),
                        ),
      // body: "",
    ),
    
    
    
    
    
    PageViewModel(
    //weight page
    
     titleWidget:Column(
        children: <Widget>[
          SizedBox(height: 100.0,),
          Image(
                              height: 100,
                              width: 100,
                              image:AssetImage("images/bmi.png"),
                            ),
        ],
      ),
     bodyWidget: Center(
        child: Column(
          children: <Widget>[
            Text("Enter your Weight"),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45)
                ),
                width: 250,
                height: 50,
                child: TextField(
                  controller:weight,
                  decoration: InputDecoration(
                   labelText: "weight",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                      hintText: "Weight",
                  ),
                  keyboardType: TextInputType.number,
                
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                ),
              )
          ],
        ),
      ),
      // footer: Text("i am footer")
    ),
    
    
    
    PageViewModel(
     //height
     
     titleWidget:Column(
        children: <Widget>[
          SizedBox(height: 100.0,),
          Image(
                              height: 100,
                              width: 100,
                              image:AssetImage("images/bmi.png"),
                            ),
        ],
      ),
      bodyWidget: Center(
        child: Column(
          children: <Widget>[
              Text("Enter your Height",
              style: TextStyle(),)
              ,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45)
                ),
                width: 120,
                height: 50,
                child: TextField(
                  controller:height,
                  decoration: InputDecoration(
                   labelText: "Height",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                      hintText: "Height",
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                ),
              )
          ],
        ),
      ),
    ),





    PageViewModel(
      //result and on done through this page done button navigate to next screen that will show  ur mode of bmi and calculate again button\
      
      titleWidget:Column(
        children: <Widget>[
          SizedBox(height: 100.0,),
          Image(
                              height: 100,
                              width: 100,
                              image:AssetImage("images/bmi.png"),
                            ),
        ],
      ),
     bodyWidget: Column(
       children: <Widget>[
         Text("Your Bmi Result is"),
         Container(
           height: 150,
           width: 400,
           decoration: BoxDecoration(
             border: Border.all(color: Colors.black45,width: 2.0),
             borderRadius: BorderRadius.all(Radius.circular(12.0)),
            //  shape: BoxShape.rectangle
           ),
           child: Center(
             child:Text(weight.text.toString()+"ainahurain"),
           ),
         ),
       ],
     ),
    ),
    PageViewModel(
      //result and on done through this page done button navigate to next screen that will show  ur mode of bmi and calculate again button\
      
      titleWidget:Column(
        children: <Widget>[
          SizedBox(height: 50.0,),
          Image(
                              height: 80,
                              width: 100,
                              image:AssetImage("images/bmi.png"),
                            ),
        ],
      ),
     bodyWidget: Column(
        children: <Widget>[
          SizedBox(height: 50.0,),
          Container(
            width: 400,
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black45,width: 10.0),
                borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Icon(Icons.tag_faces,size: 100.0,color: Colors.yellow,),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
            Container(
            width: 400,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38,width: 10.0),
                borderRadius: BorderRadius.circular(9.0),
            ),
            child: Center(
              child: Text("You are normal"),
            ),
          ),
        ],
      ),
    )];





  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
         
            globalBackgroundColor: Colors.deepOrange,
            showNextButton: true,
            next:raisedbutton1("Next"),
            nextFlex: 2,
            
            done:raisedButton("try Again",(){
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>(MyHomePage())));
            }),
            dotsFlex: 4,
            onDone:(){
            },
            pages:pages,
            // initialPage: 0,
            // curve: Curves.bounceIn,
          );
  }
 Widget raisedButton(String nofbutton,onChanged())
  {
   return GestureDetector(
        onTap: (){
            onChanged();
        },
        child: Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 0.4,color: Colors.white24),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text(nofbutton,style: TextStyle(color: Colors.white),),
                )
              ),
   );
  }
  Widget raisedbutton1(String nofbutton){
    return Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 0.4,color: Colors.white24),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Center(
                  child: Text(nofbutton,style: TextStyle(color: Colors.white),),
                )
              );
  }
}
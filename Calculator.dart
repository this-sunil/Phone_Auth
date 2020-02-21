import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double a=0,b=0,c=0;
  String op="";
  String val="0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              alignment: Alignment.bottomRight,
              child:Text(val,style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              alignment: Alignment.bottomRight,
              child:Text(a.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child:Row(
                      children:<Widget>[
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="1";
                                  }
                                  else
                                  {
                                    val=val+'1';
                                  }
                                });
                              },
                              child: Center(child: Text("1",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500),)),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="2";
                                  }
                                  else
                                  {
                                    val=val+'2';
                                  }
                                });
                              },
                              child: Center(child: Text("2",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="3";
                                  }
                                  else
                                  {
                                    val=val+'3';
                                  }
                                });
                              },
                              child: Center(child: Text("3",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ), 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                               setState(() {
                                  if(a==0)
                                {
                                  a=double.parse(val);
                                  print(a);
                                  op="+";
                                  val="";
                                  print(val);
                                  
                                }
                                else
                                {
                                    if(op=="-"){a=a-double.parse(val);}
                                    else if(op=="*"){a=a*double.parse(val);}
                                    else if(op=="/"){a=a/double.parse(val);}
                                    else if(op=="%"){a=a%double.parse(val);}
                                    else{a=a+double.parse(val);}
                                    val="";
                                    op="+";
                                    
                                }
                               });
                              },                              
                              color: Colors.white,
                              child: Center(child: Text("+",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),
                      ]
                    ), 
                    ),




                    Expanded(
                    flex: 2,
                    child:Row(
                      children:<Widget>[
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="4";
                                  }
                                  else
                                  {
                                    val=val+'4';
                                  }
                                });
                              },
                              child: Center(child: Text("4",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="5";
                                  }
                                  else
                                  {
                                    val=val+'5';
                                  }
                                });
                              },
                              child: Center(child: Text("5",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="6";
                                  }
                                  else
                                  {
                                    val=val+'6';
                                  }
                                });
                              },
                              color: Colors.white,
                              child: Center(child: Text("6",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ), 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                               setState(() {
                                 if(a==0)
                                {
                                  a=double.parse(val);
                                  print(a);
                                  op="-";
                                  val="";
                                  print(val);
                                  
                                }
                                else
                                {
                                    if(op=="+"){a=a-double.parse(val);}
                                    else if(op=="*"){a=a*double.parse(val);}
                                    else if(op=="/"){a=a/double.parse(val);}
                                    else if(op=="%"){a=a%double.parse(val);}
                                    else{a=a-double.parse(val);}
                                    val="";
                                    op="-";
                                }
                               });
                              },
                              child: Center(child: Text("-",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),
                      ]
                    ), 
                    ),



                    Expanded(
                    flex: 2,
                    child:Row(
                      children:<Widget>[
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="7";
                                  }
                                  else
                                  {
                                    val=val+'7';
                                  }
                                });
                              },
                              color: Colors.white,
                              child: Center(child: Text("7",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="8";
                                  }
                                  else
                                  {
                                    val=val+'8';
                                  }
                                });
                              },
                              child: Center(child: Text("8",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="9";
                                  }
                                  else
                                  {
                                    val=val+'9';
                                  }
                                });
                              },
                              color: Colors.white,
                              child: Center(child: Text("9",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ), 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                               setState(() {
                                 if(a==0)
                                {
                                  a=double.parse(val);
                                  print(a);
                                  op="*";
                                  val="";
                                  print(val);
                                  
                                }
                                else
                                {
                                    if(op=="*"){a=a-double.parse(val);}
                                    else if(op=="+"){a=a*double.parse(val);}
                                    else if(op=="/"){a=a/double.parse(val);}
                                    else if(op=="%"){a=a%double.parse(val);}
                                    else{a=a+double.parse(val);}
                                    val="";
                                    op="*";
                                }
                               });
                              },
                              color: Colors.white,
                              child: Center(child: Text("*",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),
                      ]
                    ), 
                    ),



                    Expanded(
                    flex: 2,
                    child:Row(
                      children:<Widget>[
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                if(a==0)
                                {
                                  a=double.parse(val);
                                  print(a);
                                  op="/";
                                  val="";
                                  print(val);
                                  
                                }
                                else
                                {
                                    if(op=="+"){a=a-double.parse(val);}
                                    else if(op=="*"){a=a*double.parse(val);}
                                    else if(op=="/"){a=a/double.parse(val);}
                                    else if(op=="%"){a=a%double.parse(val);}
                                    else{a=a/double.parse(val);}
                                    val="";
                                    op="/";
                                }
                              },
                              color: Colors.white,
                              child: Center(child: Text("%",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(val=='0')
                                  {
                                    val="0";
                                  }
                                  else
                                  {
                                    val=val+'0';
                                  }
                                });
                              },
                              child: Center(child: Text("0",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              color: Colors.white,
                              onPressed: (){
                                setState(() {
                                  if(c==0)
                                  {
                                    if(val=="0")
                                  {
                                    val=".";
                                    c=1;
                                  }
                                  else
                                  {
                                    val=val+'.';
                                    c=1;
                                  }
                                  }
                                });
                              },
                              child: Center(child: Text(".",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ), 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                              setState(() {
                                 if(a==0)
                                {
                                  a=double.parse(val);
                                  print(a);
                                  op="/";
                                  val="";
                                  print(val);
                                  
                                }
                                else
                                {
                                    if(op=="+"){a=a-double.parse(val);}
                                    else if(op=="*"){a=a*double.parse(val);}
                                    else if(op=="/"){a=a/double.parse(val);}
                                    else if(op=="%"){a=a%double.parse(val);}
                                    else{a=a%double.parse(val);}
                                    val="";
                                    op="%";
                                }
                              });
                              },
                              color: Colors.white,
                              child: Center(child: Text("/",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),
                      ]
                    ), 
                    ),



                    Expanded(
                    flex: 2,
                    child:Row(
                      children:<Widget>[
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                setState(() {
                                  val="0";
                                  op="";
                                  a=0;b=0;c=0;
                                });
                              },
                              color: Colors.white,
                              child: Center(child: Text("AC",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                                setState(() {
                                  if(val!='0' || val=='1' || val=='2' || val=='3' || val=='4' || val=='5' || val=='6' || val=='7' || val=='8' || val=='9')
                                  {
                                      val=val+'00';
                                  }
                                  
                                  
                                  
                                });
                              },
                              color: Colors.white,
                              child: Center(child: Text("00",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),
                          Expanded(
                          child:Container(
                            margin: EdgeInsets.all(5.0),
                            child:RaisedButton(
                              onPressed: (){
                              setState(() {
                                if(op=='+')
                                {
                                  b=double.parse(val);
                                  b=b+a;
                                  val=b.toString();
                                
                                  print(val);
                                }
                                 if(op=='-')
                                {
                                  b=double.parse(val);
                                  val="";
                                  op="-";
                                  val=(a-b).toString();
                                }
                                 if(op=='*')
                                {
                                  b=double.parse(val);
                                  val="";
                                  op="*";
                                  val=(a*b).toString();
                                }
                                 if(op=='/')
                                {
                                  b=double.parse(val);
                                  val="";
                                  op="/";
                                  val=(a/b).toString();
                                }
                                 if(op=='%')
                                {
                                  b=double.parse(val);
                                  val="";
                                  op="%";
                                  val=(a%b).toString();
                                }
                              
                                  int dotLoc=val.indexOf('.');
                                  if(val.length-dotLoc==2 && val[dotLoc+1]=='0')
                                  {
                                    val=val.substring(0,val.indexOf('.'));
                                  }
                                  op='';
                                  a=0;
                                  b=0;c=0;
                              });
                                
                              },
                              color: Colors.white,
                              child: Center(child: Text("=",style: TextStyle(fontSize:30,fontWeight:FontWeight.w500))),
                              ),
                          ) 
                          ),

                          
                      ]
                    ), 
                    ),
                ],
              ),
              ),
          ),
      ],
      ),
    );
  }
}
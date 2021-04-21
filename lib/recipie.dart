import 'package:flutter/material.dart';

class recipedetail extends StatefulWidget {
  static const String routeName = '/recipedetail';
  String recipename;
  String recipeimg;
  String preptime;
  String recipedescription;
  recipedetail(
      {this.recipedescription, this.preptime, this.recipeimg, this.recipename});

  @override
  _recipedetailState createState() => _recipedetailState();
}

class _recipedetailState extends State<recipedetail> {
  Expanded fullrecipe() {
    return Expanded(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/${widget.recipeimg}.jpg'),
                        fit: BoxFit.fill)),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Ingredients: ',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red.shade600,
                            ),
                            child: Text(
                              '${widget.preptime} min',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              '${widget.recipedescription}',
                              style: TextStyle(fontSize: 25),
                            )),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        title: Text(
          widget.recipename,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[fullrecipe()],
        ),
      ),
    );
  }
}

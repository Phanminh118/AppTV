import 'package:app_tv/utils/screen_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewBookView extends StatefulWidget {
  @override
  _NewBookViewState createState() => _NewBookViewState();
}

class _NewBookViewState extends State<NewBookView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff068189),
          title: Text("New Book"),
        ),
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Opacity(
            opacity: 0.5,
            child: Image.network(
              "https://scontent.fhan2-3.fna.fbcdn.net/v/t31.0-8/11062339_936357076423736_8686865242051210984_o.jpg?_nc_cat=108&ccb=2&_nc_sid=09cbfe&_nc_ohc=KfvB_wquuYoAX_Yu869&_nc_ht=scontent.fhan2-3.fna&oh=906780f218fbf138114378e2ed1b9994&oe=5FBA62D8",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                FormBuilderTextField(
                  attribute: 'sach',
                  decoration: InputDecoration(labelText: "Mã Sách : "),
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                ),
                FormBuilderTextField(
                  attribute: 'sach',
                  decoration: InputDecoration(labelText: "Tên Sách : "),
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                ),
                FormBuilderTextField(
                  attribute: 'sach',
                  decoration: InputDecoration(labelText: "Giá Sách : "),
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*10),
                Row(
                  children: [
                    SizedBox(width: SizeConfig.blockSizeHorizontal*15),
                    Expanded(child: FlatButton( color : Colors.red,onPressed: () {
                      Modular.navigator.pop();
                    }, child: Text("Hủy",style: TextStyle(color: Colors.white),))),
                    SizedBox(width: SizeConfig.blockSizeHorizontal*15),
                    Expanded(child: FlatButton( color : Color(0xff068189),onPressed: () {
                      Modular.navigator.pop();
                    }, child: Text("Lưu",style: TextStyle(color: Colors.white),))),
                    SizedBox(width: SizeConfig.blockSizeHorizontal*15),
                  ],

                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
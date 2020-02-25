import 'package:flutter/material.dart';

class buttonPrimary extends StatelessWidget {
  final String textButton;
  final bool isLoading;
  final double widthButao;
  final Function validarCampos;
  final double heightButao;


  const buttonPrimary(
      {Key key,
      this.textButton,
      this.isLoading,
      this.widthButao,
      this.validarCampos, this.heightButao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isLoading ? 50 : 50),
            color: Color(0XFFEC5981)),
        height: heightButao,
        width: isLoading ? 42 : widthButao,
        alignment: Alignment.center,
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                textButton,
                style: Theme.of(context).textTheme.button,
              ),
      ),
      onTap: () {
        validarCampos();
        //Future.delayed(Duration(seconds: 2), () => validarCampos());
      },
    );
  }
}

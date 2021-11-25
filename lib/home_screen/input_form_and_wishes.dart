import 'package:flutter/material.dart';
import 'package:hbd_2/providers/wish_format.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:hbd_2/providers/wishes_provider.dart';
import 'wishesFromFriends.dart';

// ignore: must_be_immutable
class InputFormAndWishes extends StatelessWidget {
  final MediaQueryData mediaQuery;
  final String inputInstruction;
  final FocusNode nameFocusNode;
  WishFormat editedWish;
  final String textFieldLabelText;
  final FocusNode wishesFocusNode;
  final String displayedTextTitle;
  final VoidCallback saveForm;

  InputFormAndWishes(
      {required this.mediaQuery,
      required this.inputInstruction,
      required this.nameFocusNode,
      required this.editedWish,
      required this.textFieldLabelText,
      required this.wishesFocusNode,
      required this.displayedTextTitle,
      required this.saveForm});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: mediaQuery.size.width * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.7)),
        child: Column(children: [
          Text(inputInstruction,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              )),
          SizedBox(height: 15),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(labelText: 'Your name'),
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(nameFocusNode);
            },
            onSaved: (value) {
              editedWish =
                  WishFormat(name: value.toString(), wishes: editedWish.wishes);
            },
          ),
          TextFormField(
            maxLines: 2,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(labelText: textFieldLabelText),
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(wishesFocusNode);
            },
            onSaved: (value) {
              editedWish =
                  WishFormat(name: editedWish.name, wishes: value.toString());
            },
          ),
          SizedBox(height: 15),
          ElevatedButton(onPressed: saveForm, child: Text('Submit')),
        ]),
      ),
      SizedBox(height: 20),
      Container(
        width: mediaQuery.size.width * 0.85,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.1)),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Column(
              children: [
                Container(
                  width: mediaQuery.size.width * 0.85,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(displayedTextTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ),
                ),
                SizedBox(height: 5),
                Consumer<WishesProvider>(
                    builder: (ctx, wishesFetched, _) =>
                        WishesFromFriends(wishesFetched.wishesDisplayed)),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 20)
    ]);
  }
}

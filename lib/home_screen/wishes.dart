import 'package:flutter/material.dart';
import 'package:hbd_2/birthday_data.dart';
import 'package:hbd_2/home_screen/wishesFromFriends.dart';
import 'dart:ui';

import 'package:provider/provider.dart';
import 'package:hbd_2/providers/wish_format.dart';
import 'package:hbd_2/providers/wishes_provider.dart';
import 'input_form_and_wishes.dart';

class Wishes extends StatefulWidget {
  @override
  _WishesState createState() => _WishesState();
}

class _WishesState extends State<Wishes> {
  final _form = GlobalKey<FormState>();
  final _nameFocusNode = FocusNode();
  final _wishesFoucsNode = FocusNode();

  var _editedWish = WishFormat(name: '', wishes: '');

  @override
  void initState() {
    super.initState();
  }

  var _initvalues = {'name': '', 'wishes': ''};
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      _initvalues = {'name': _editedWish.name, 'wishes': _editedWish.wishes};
      Provider.of<WishesProvider>(context, listen: false)
          .fetchAndSetWishes('wishes');
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _wishesFoucsNode.dispose();
    super.dispose();
  }

  Future<void> _saveForm(String link) async {
    // final isValid = _form.currentState?.validate();
    _form.currentState?.save();
    _form.currentState?.reset();
    if (_editedWish.name != '' || _editedWish.wishes != '') {
      try {
        await Provider.of<WishesProvider>(context, listen: false)
            .addWishes(_editedWish, link);
        Provider.of<WishesProvider>(context, listen: false)
            .fetchAndSetWishes(link);
      } catch (error) {
        throw error;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: mediaQuery.size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.7)),
                child: Column(children: [
                  Text('Enter your wishes for $birthdayName',
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
                      FocusScope.of(context).requestFocus(_nameFocusNode);
                    },
                    onSaved: (value) {
                      _editedWish = WishFormat(
                          name: value.toString(), wishes: _editedWish.wishes);
                    },
                  ),
                  TextFormField(
                    maxLines: 2,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelText: 'Your wishes for $birthdayName'),
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_wishesFoucsNode);
                    },
                    onSaved: (value) {
                      _editedWish = WishFormat(
                          name: _editedWish.name, wishes: value.toString());
                    },
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () => _saveForm('wishes'),
                      child: Text('Submit')),
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
                            child: Text('Wishes for $birthdayName:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        SizedBox(height: 5),
                        Consumer<WishesProvider>(
                            builder: (ctx, wishesFetched, _) =>
                                WishesFromFriends(
                                    wishesFetched.wishesDisplayed)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //CAKEP
              // InputFormAndWishes(
              //     mediaQuery: mediaQuery,
              //     inputInstruction: 'Seberapa cakep sih si $birthdayName',
              //     nameFocusNode: _nameFocusNode,
              //     editedWish: _editedCakep,
              //     textFieldLabelText: 'Deskripsikan kecakepan $birthdayName',
              //     wishesFocusNode: _wishesFoucsNode,
              //     displayedTextTitle: 'Kecakepan $birthdayName',
              //     saveForm: () => _saveForm('Cakep')),
              //AIB GEO

              //CERITA LUCU GEO

              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Credits By:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        appCredits,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        '- See you next update -',
                        style: TextStyle(
                            fontSize: 17, fontStyle: FontStyle.italic),
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}

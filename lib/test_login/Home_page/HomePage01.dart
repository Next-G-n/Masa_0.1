import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:masa0_0_1/Animation/custom_rect_tween.dart';
import 'package:masa0_0_1/Animation/hero_dialog_router.dart';
import 'package:masa0_0_1/Permission/contactPermission.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

import 'package:masa0_0_1/test_login/Animate/FadeAnimation.dart';

/// Uses a [Hero] with tag [_heroAddTodo].
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Contact> contacts = [];
List<Contact> contactFiltered = [];
TextEditingController searchcontroller = new TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  final _scafffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    askContactPermission();
  }

  filterContects() {
    List<Contact> _contacts = [];
    _contacts.addAll(contacts);
    if (searchcontroller.text.isNotEmpty) {
      _contacts.retainWhere((contact) {
        String searchterm = searchcontroller.text.toLowerCase();
        String contactName = contact.displayName.toLowerCase();
        return contactName.contains(searchterm);
      });
      setState(() {
        contactFiltered = _contacts;
      });
    }
  }

  Future askContactPermission() async {
    final permission = await ContactUtils.getContactPermission();

    switch (permission) {
      case PermissionStatus.granted:
        uploadContacts();
        break;
      default:
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Please allow to "Upload Contants"'),
          backgroundColor: Theme.of(context).errorColor,
          duration: Duration(seconds: 3),
        ));
        break;
    }
  }

  uploadContacts() async {
    List<Contact> _contacts =
        (await ContactsService.getContacts(withThumbnails: false)).toList();
    setState(() {
      contacts = _contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scafffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
            child: Column(children: <Widget>[
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                      2.9,
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-1.png'))),
                      ),
                    )),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: FadeAnimation(
                    3.1,
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/light-2.png'))),
                    ),
                  ),
                ),
                Positioned(
                  left: 280,
                  width: 40,
                  height: 200,
                  child: FadeAnimation(
                    3.3,
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/clock.png'))),
                    ),
                  ),
                ),
                Positioned(
                    child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: FadeAnimation(
                          3.5,
                          Center(
                              child: Text("HomePage Please Choose the Contact",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold))),
                        )))
              ],
            ),
          ),
          Container(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[100]))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Contect One",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Contect Two",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                // ignore: missing_required_param
                //  child: Hero(
                //
                //
                //
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(HeroDialogRoute(builder: (context) {
                      return _AddTodoPopupCard1();
                    }));
                  },
                  child: Hero(
                    tag: _heroAddTodo,
                    child: Card(
                        child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Contect three',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
              )
            ],
          ))
        ])));
  }
}

const String _heroAddTodo = 'add-todo-hero';

class _AddTodoPopupCard1 extends StatefulWidget {
  @override
  __AddTodoPopupCard1State createState() => __AddTodoPopupCard1State();
}

class __AddTodoPopupCard1State extends State<_AddTodoPopupCard1> {
  List<Contact> contactFiltered = [];
  @override
  void initState() {
    super.initState();

    searchcontroller.addListener(() {
      filterContects();
    });
  }

  flattenPhoneNumber(String phoneStr) {
    return phoneStr.replaceAllMapped(RegExp(r'^(\+)|\D'), (Match m) {
      return m[0] == '+' ? '+' : '';
    });
  }

  filterContects() {
    List<Contact> _contacts = [];
    _contacts.addAll(contacts);
    if (searchcontroller.text.isNotEmpty) {
      _contacts.retainWhere((contact) {
        String searchterm = searchcontroller.text.toLowerCase();
        String searchTermFlatten = flattenPhoneNumber(searchterm);
        String contactName = contact.displayName.toLowerCase();
        bool nameMatches = contactName.contains(searchterm);

        if (nameMatches == true) {
          return true;
        }
        if (searchTermFlatten.isEmpty) {
          return false;
        }

        var phone = contact.phones.firstWhere((phn) {
          String phnFlattened = flattenPhoneNumber(phn.value);
          return phnFlattened.contains(searchTermFlatten);
        }, orElse: () => null);
        return phone != null;
      });
      setState(() {
        contactFiltered = _contacts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    bool isSearching = searchcontroller.text.isNotEmpty;
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Hero(
                tag: _heroAddTodo,
                createRectTween: (begin, end) {
                  return CustomRectTween(begin: begin, end: end);
                },
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 50,
                            child: TextField(
                              controller: searchcontroller,
                              decoration: InputDecoration(
                                  labelText: 'Search',
                                  border: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Theme.of(context).primaryColor,
                                  )),
                            )),
                        Expanded(
                            child: Container(
                          height: 300,
                          width: 500,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: isSearching == true
                                  ? contactFiltered.length
                                  : contacts.length,
                                  
                              itemBuilder: (context, index) {
                                Contact contact = isSearching == true
                                    ? contactFiltered[index]
                                    : contacts[index];
                                return Card(
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: ListTile(
                                      title: Text(contact.displayName),
                                      subtitle: Text(contact.phones.length > 0
                                          ? contact.phones.elementAt(0).value
                                          : ''),
                                    ));
                              }),
                        ))
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}

class _AddTodoPopupCard extends StatelessWidget {
  const _AddTodoPopupCard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    bool isSearching = searchcontroller.text.isNotEmpty;
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Hero(
                tag: _heroAddTodo,
                createRectTween: (begin, end) {
                  return CustomRectTween(begin: begin, end: end);
                },
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 50,
                            child: TextField(
                              controller: searchcontroller,
                              decoration: InputDecoration(
                                  labelText: 'Search',
                                  border: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Theme.of(context).primaryColor)),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Theme.of(context).primaryColor,
                                  )),
                            )),
                        Expanded(
                            child: Container(
                          height: 300,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: isSearching == true
                                  ? contactFiltered.length
                                  : contacts.length,
                              itemBuilder: (context, index) {
                                Contact contact = isSearching == true
                                    ? contactFiltered[index]
                                    : contacts[index];
                                return Card(
                                    child: ListTile(
                                  title: Text(contact.displayName),
                                  subtitle: Text(contact.phones.length > 0
                                      ? contact.phones.elementAt(0).value
                                      : ''),
                                  leading: (contact.avatar != null &&
                                          contact.avatar.isNotEmpty)
                                      ? CircleAvatar(
                                          backgroundImage:
                                              MemoryImage(contact.avatar),
                                        )
                                      : CircleAvatar(
                                          child: Text(contact.initials()),
                                          backgroundColor:
                                              Theme.of(context).accentColor,
                                        ),
                                ));
                              }),
                        ))
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}

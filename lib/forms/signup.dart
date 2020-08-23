import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          
          title: Text( 'SignUp'),
        ), 
        body: MySignupForm(),
      ),
      
    );
  }
}

class MySignupForm extends StatefulWidget {
  @override
  _MySignupFormState createState() => _MySignupFormState();
}

class _MySignupFormState extends State<MySignupForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView( 
        children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'please enter some text';
              }
              return null;
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              labelText: 'First Name',
              labelStyle: TextStyle(fontSize: 15,
              color: Colors.black,
              )
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter the babies last name';
          
              }
              return  null;
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              labelText: 'Last Name',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )

            ),

          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter the age of the baby';
              }
              return null;
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              labelText: 'Age',
              labelStyle: TextStyle(
                fontSize: 15, color: Colors.black,
              )
            ),

          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter Date of birth';
              }
              return null;
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              labelText: 'DOB',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter the babies Weight';
              }
              else {
                return 'The recommended weight unit is (kg)';
              }
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide : BorderSide(color: Colors.black)
              ),
              labelText: 'Weight',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )
            ),

          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Upload the avatar image for your baby';
              }
              else {
                return ' the recommended size is 530 by 670 pixels';
              }
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              ),
              labelText: 'Profile Pic',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )
            )

          ),
          
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'please enter your username';
                }
                return null;
              },
              obscureText: true,
                style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.black)
                          ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'please enter your password';
                          }
                          else {
                            return 'the password must be a mixture of numbers and characters';
                          }
                          
                        },
              obscureText: true,
                style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            ),
                            labelText: 'password',
                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.black)
                          ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'confirm password. use a strong password';
                          }
                          return null;
                        },
              obscureText: true,
                style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black
                              )
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(fontSize: 15,
                            color: Colors.black)
                          ),
                      ),
                


          Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(onPressed:() {
            if (_formKey.currentState.validate()) {
              Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('processing data...')));
              
            }
          }, 
          color: Colors.blue,
          child: Row(
            children: <Widget>[
              Text('Submit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

              ),
              Icon(Icons.arrow_forward)
              
              

            ], 
          ),
          
          ),
          ),
        ],
        ),
        ],
      ),
      
    );
  }
}

// class MyCustomForm extends StatefulWidget {
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

// // Create a corresponding State class.
// // This class holds data related to the form.
// class MyCustomFormState extends State<MyCustomForm> {
//   // Create a global key that uniquely identifies the Form widget
//   // and allows validation of the form.
//   //
//   // Note: This is a GlobalKey<FormState>,
//   // not a GlobalKey<MyCustomFormState>.
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please enter some text';
//               }
//               return null;
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: RaisedButton(
//               onPressed: () {
//                 // Validate returns true if the form is valid, or false
//                 // otherwise.
//                 if (_formKey.currentState.validate()) {
//                   // If the form is valid, display a Snackbar.
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text('Processing Data')));
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import './app_theme.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text('              Contact Us'
            )
          ),
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Icon(Icons.security)
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'BabyCare Privacy Policy \n Privacy Policy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'This app was built by savytechies as a commercial app. This service is provided by savytechies with a few in app purchases and is intended fo use as it is \n this page is used to infrom visitors regarding our plocies with the collection, use and disclosure of personal infromation if anyone decided to use our service. \n If you choose to use our service, then you agree to the collection and use of information in relation to this policy. The personal information that we collect is used to provide users with the best feedback and is also used by our AI to predict the best output. generally it is used for providing and improving service. we will not share information provided by users with anyone except as described in this privacy policy. \n The terms used in this privacy policy have the same meanings as in our terms and conditions, which is accessible at BabyCare unless otherwise defined in this privacy policy.  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'conatct us',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
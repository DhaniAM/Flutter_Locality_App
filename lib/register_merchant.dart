import 'package:flutter/material.dart';

class RegisterMerchant extends StatefulWidget {
  const RegisterMerchant({Key? key}) : super(key: key);

  @override
  State<RegisterMerchant> createState() => _RegisterMerchantState();
}

class _RegisterMerchantState extends State<RegisterMerchant> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String merchantName = '';
    String merchantOpenTime = '';
    String merchantOverview = '';
    String merchantRating = '';
    String merchantLocation = '';
    String merchantContact = '';
    String merchantMenu = '';

    return Container(
      // Background decoration
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(252, 225, 208, 1),
            Color.fromRGBO(255, 173, 214, 1),
            Color.fromRGBO(162, 186, 245, 1),
          ],
        ),
      ),
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            /// Back Arrow Button
            Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.purple,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Register New Merchant',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  // Merchant Name
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant name...',
                        labelText: 'Merchant Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.business),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => setState(() {
                        merchantName = value.toString();
                      }),
                    ),
                  ),

                  // Overview
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant overview...',
                        labelText: 'Merchant Overview',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.text_snippet),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantOverview = value.toString();
                      }),
                    ),
                  ),

                  // Open time
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant open time...',
                        labelText: 'Merchant Open Time',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.access_time_rounded),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantOpenTime = value.toString();
                      }),
                    ),
                  ),

                  // Review
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant review...',
                        labelText: 'Merchant Review',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.star_rate_rounded),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantOverview = value.toString();
                      }),
                    ),
                  ),

                  // Menu
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant menu...',
                        labelText: 'Merchant Menu',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.list),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantMenu = value.toString();
                      }),
                    ),
                  ),

                  // Location
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant location...',
                        labelText: 'Merchant Location',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_on),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantLocation = value.toString();
                      }),
                    ),
                  ),

                  // Contact
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter merchant contact...',
                        labelText: 'Merchant Contact',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Can\'t empty';
                        }
                        return null;
                      },
                      onSaved: (value) => setState(() {
                        merchantContact = value.toString();
                      }),
                    ),
                  ),

                  // Submit Button
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        // Not complete yet, can't figute it out yet
                        // process
                        if (_formKey.currentState!.validate()) {
                          //   // _formKey.currentState!.save();
                          //   merchantList.add(Merchant(
                          //     name: merchantName,
                          //     overview: merchantOverview,
                          //     openTime: merchantOpenTime,
                          //     rating: merchantRating,
                          //   ));
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: const Duration(seconds: 10),
                              content: const Text(
                                  'Data Submitted!!! Please wait for our team to review your submisison...'),
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: () {},
                              ),
                            ),
                          );
                        }
                      },
                      child: const Text('Register Merchant'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

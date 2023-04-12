import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MySettingApp(),
    ),
  );
}

class MySettingApp extends StatefulWidget {
  const MySettingApp({Key? key}) : super(key: key);

  @override
  State<MySettingApp> createState() => _MySettingAppState();
}

class _MySettingAppState extends State<MySettingApp> {
  bool isAndroid = true;
  bool isLock = false;
  bool isFinger = false;
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return isAndroid
        ? MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch.adaptive(
                    trackColor: MaterialStateProperty.all(Colors.white),
                    thumbColor: MaterialStateProperty.all(Colors.blueGrey),
                    value: isAndroid,
                    onChanged: (val) => setState(() => isAndroid = val),
                  ),
                ],
                backgroundColor: Colors.red,
                title: const Text(
                  "Setting UI",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Common",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      const ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Language"),
                        subtitle: Text("English"),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(Icons.cloud_outlined),
                        title: Text("Environment"),
                        subtitle: Text("Production"),
                      ),
                      const Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      const ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone Number"),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Sign Out"),
                      ),
                      const Text(
                        "Security",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        leading: const Icon(Icons.phonelink_lock_sharp),
                        title: const Text("Lock app in background"),
                        trailing: Switch.adaptive(
                            value: isLock,
                            onChanged: (val) => setState(() => isLock = val)),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.fingerprint),
                        title: const Text("Use Fingerprint"),
                        trailing: Switch.adaptive(
                            value: isFinger,
                            onChanged: (val) => setState(() => isFinger = val)),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.lock),
                        title: const Text("Change Password"),
                        trailing: Switch.adaptive(
                            value: isPassword,
                            onChanged: (val) =>
                                setState(() => isPassword = val)),
                      ),
                      const Text(
                        "Misc",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      const ListTile(
                        leading: Icon(Icons.contact_page_rounded),
                        title: Text("Term of Service"),
                      ),
                      const ListTile(
                        leading: Icon(Icons.library_books),
                        title: Text("Open source license"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            theme: const CupertinoThemeData(
              brightness: Brightness.light,
            ),
            home: Builder(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  backgroundColor: CupertinoColors.destructiveRed,
                  middle: const Text(
                    "Setting UI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  trailing: CupertinoSwitch(
                      value: isAndroid,
                      onChanged: (val) => setState(() => isAndroid = val)),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Common",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 85,
                            width: 450,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.language,
                                        color: Colors.grey,
                                      ),
                                      Text("Language"),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Text(
                                        "English",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.cloud_outlined,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Environment",
                                      ),
                                      SizedBox(
                                        width: 105,
                                      ),
                                      Text(
                                        "Production",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Account",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 125,
                            width: 450,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.grey,
                                      ),
                                      Text("Phone Number"),
                                      SizedBox(
                                        width: 175,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.email,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Email",
                                      ),
                                      SizedBox(
                                        width: 245,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.logout,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Sign out",
                                      ),
                                      SizedBox(
                                        width: 225,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Security",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 140,
                            width: 450,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.phonelink_lock_sharp,
                                        color: Colors.grey,
                                      ),
                                      const Text("Lock app in background"),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 50,
                                        child: CupertinoSwitch(
                                          value: isLock,
                                          onChanged: (val) =>
                                              setState(() => isLock = val),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.fingerprint,
                                        color: Colors.grey,
                                      ),
                                      const Text(
                                        "Use fingerprint",
                                      ),
                                      const SizedBox(
                                        width: 165,
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 50,
                                        child: CupertinoSwitch(
                                          value: isFinger,
                                          onChanged: (val) =>
                                              setState(() => isFinger = val),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                      const Text(
                                        "Change password",
                                      ),
                                      const SizedBox(
                                        width: 140,
                                      ),
                                      SizedBox(
                                        height: 30,
                                        width: 50,
                                        child: CupertinoSwitch(
                                          value: isPassword,
                                          onChanged: (val) =>
                                              setState(() => isPassword = val),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Misc",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 125,
                            width: 450,
                            decoration: const BoxDecoration(
                              color: CupertinoColors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.contact_page_rounded,
                                        color: Colors.grey,
                                      ),
                                      Text("Terms of Service"),
                                      SizedBox(
                                        width: 175,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.library_books,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Open source licenses",
                                      ),
                                      SizedBox(
                                        width: 140,
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey,
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          );
  }
}

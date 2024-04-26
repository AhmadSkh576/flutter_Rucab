import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _storage = FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'authToken', value: token);
  }

  //authToken: It acts as a consistent pointer to the token (ID)
//This line of code saves the token in secure
//storage under the identifier 'authToken'.
  Future<String?> getToken() async {
    return await _storage.read(key: 'authToken');
  }
}

// nhna hal file ha nstkhdmu ta hata nsahel 3lena enu
//l user m yetar y3ml login kl mara
// this package stores data securely in iOS and Android, leveraging the underlying platform's security features.
// On iOS, it uses the Keychain, and on Android, it uses the Keystore.
//even if an attacker gains physical access to the device
//or if another app on the device is compromised, your stored tokens remain protected.

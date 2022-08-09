import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ApartmentParkingRentalAppFirebaseUser {
  ApartmentParkingRentalAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ApartmentParkingRentalAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ApartmentParkingRentalAppFirebaseUser>
    apartmentParkingRentalAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ApartmentParkingRentalAppFirebaseUser>((user) =>
            currentUser = ApartmentParkingRentalAppFirebaseUser(user));

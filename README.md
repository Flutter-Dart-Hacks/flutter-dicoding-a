# Flutter Dicoding A

Latihan mengerjakan kelas dari Dicoding tentang Flutter untuk Pemula.

Codelab Dicoding bisa diakses disini.
[https://github.com/dicodingacademy/a159-flutter-pemula-labs](https://github.com/dicodingacademy/a159-flutter-pemula-labs)

Menambahkan platform web
[https://stackoverflow.com/questions/66214066/how-do-i-add-platforms-to-an-existing-flutter-app-project](https://stackoverflow.com/questions/66214066/how-do-i-add-platforms-to-an-existing-flutter-app-project)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Contoh Membuat Signing Key

Pembuatan signing key dengan Java Keytool

```sh
keytool -genkey -v -keystore ~/uploadtest-dicoding-keystore.jks -keyalg RSA -keysize 2048 -validity 70000 -alias dico_upload_testing
```

Referensi dari Stackoverflow

[https://stackoverflow.com/questions/14272794/how-to-create-an-android-keystore-rsa-key-with-infinite-validity](https://stackoverflow.com/questions/14272794/how-to-create-an-android-keystore-rsa-key-with-infinite-validity)

Untuk pengecekan validitas keystore jks

```sh
keytool -list -v -keystore upload-dicoding-keystore.jks
```

## Min SDK Version dan Target SDK Version

Mengganti fungsi min sdk version dan target sdk version

[https://stackoverflow.com/questions/52060516/how-to-change-android-minsdkversion-in-flutter-project](https://stackoverflow.com/questions/52060516/how-to-change-android-minsdkversion-in-flutter-project)

Menyetel build release dengan keystore

[https://docs.flutter.dev/deployment/android#signing-the-app](https://docs.flutter.dev/deployment/android#signing-the-app)

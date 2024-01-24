# ezrxmobile plus
This is assignment of Realtime innovation created by Domain-Driven Design Architecture. 
### Require
- [Vscode](https://code.visualstudio.com/)
- [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [FVM](https://fvm.app/docs/getting_started/installation)

### Optional
- [Bloc extension](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc)

### Setup
1. Install [FVM](https://fvm.app/docs/getting_started/installation)
2. Git clone project
3. Open project with Vscode, check ".fvm/fvm_config.json" file, check the "flutterSdkVersion" inside and use ```fvm use <flutterSdkVersion_you_saw>```
4. Restart vscode

### Auto build json_serializable, freezed, auto_route_generator, hive_generator 
```fvm flutter pub run build_runner watch --delete-conflicting-outputs```


### Build app
#### IOS
- ```fvm flutter build ios --flavor mock -t lib/main_mock.dart```
- ```fvm flutter build ios --flavor dev -t lib/main_dev.dart```
- ```fvm flutter build ios --flavor uat -t lib/main_uat.dart```
- ```fvm flutter build ios --flavor prod -t lib/main_prod.dart```

#### Android
- ```fvm flutter build appbundle --flavor mock -t lib/main_mock.dart```
- ```fvm flutter build appbundle --flavor dev -t lib/main_dev.dart```
- ```fvm flutter build appbundle --flavor uat -t lib/main_uat.dart```
- ```fvm flutter build appbundle --flavor prod -t lib/main_prod.dart```
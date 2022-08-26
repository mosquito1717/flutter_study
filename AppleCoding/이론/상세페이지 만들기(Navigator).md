### Navigator 위젯으로 상세 페이지 띄우기
```dart
Navigator.push(context,
  MaterialPageRoute(builder: (c){return Text('새 페이지');})
);
```
새 페이지가 밑에서부터 위로 띄워짐.

>context는 도대체 무엇일까?
>
>context에는 MaterialApp 정보가 들어가 있으면 된다고 하는데...

***
### arrow function
```dart
Navigator.push(context,
  MaterialPageRoute(builder: (c) => Text('새 페이지');)
);
```

***
### 닫기 버튼 만들기
```dart
Navigator.pop(context);
```

***
### routes 사용하기 - 페이지가 많은 경우

MaterialApp 위젯 안에
```dart
MaterialApp(
  theme: style.theme,
  initialRoute: '/',
  routes: {
    '/': (c) => Text('첫페이지'),
    '/detail': (c) => Text('둘째페이지')
  }
)
```
페이지 이동은?
```dart
Navigator.pushNamed(context, '/detail')
```

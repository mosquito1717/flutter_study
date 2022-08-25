### Future
- 오래 걸리는 것들
### FutureBuilder() 위젯
```dart
FutureBuilder(future : data, builder: (){})
```
future: 에 입력한 Future가 완료되면
builder: 안의 위젯을 보여줌

데이터 나중에 추가 안 되는 경우에 유용.

이외의 경우에는 if문을 써서 처리
***
data.isNotEmpty -> 데이터가 비었는지 알 수 있음 -> 데이터를 잘 가져왔는지 묻는 if문에서 사용하기 좋음

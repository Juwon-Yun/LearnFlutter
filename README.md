### this repo is Learn Basic Flutter for Co-op Company Projects.

🚀 Juwon's Flutter Project

<details>
    <summary> flutter </summary>    

```dart
    1. flutter div => container
      - child
      - color
      - width
      - height
      - padding
      - margin
      - EdgeInsets.zero
      - EdgeInsets.all()
      - EdgeInsets.symmetric()
      - EdgeInsets.only()
      - AlignmentGeometry() 9가지 옵션
        display : flex, justify-content, align-content랑 비슷함
      - alignment
    2. center 
      - center로 그린 자식은 영역 안에서 중간으로 위치한다.
    3. Sizedbox 텍스트를 감싸는 박스의 크기, 설정하지 않으면 자식의 크기를 따라간다.
      - width
      - height
      - child
    4. Column
      - mainAxisAlignment : MainAxisAlignment.center .start .end .space-around 등 flex임
      - crossAxisAlignment : CrossAxisAlignment.center
    5. Row
      - mainAxisAlignment : MainAxisAlignment.center .start .end .space-around 등 flex임
      - crossAxisAlignment : CrossAxisAlignment.center
    6. Wrap
      - direction : Axis.수평 .수직
    7. Stack
      - Stack : container를 쌓는다. ( 겹쳐서 그림 )
    8. Align (배치 align-content와 같음, 배차를 위해 사용 )
    9. Spacer ( 여백, flex의 공간값을 조정하는데 사용한다. param : flex) 
    10. Expanded (Spacer로 확보한 공간안에 무언가 넣고 싶으면 사용한다.)
      - 자율성 : Center < Align.alignment의 Alignment.center < const Alignment(0, 0) 
    11. ElevatedButton, OutlinedButton, TextButton 생성자 형태 ( 속성값 )가 동일하다.
    12. StatelessWidget, StateFulWidget
    13. floatingActionButton, Icon
    14. stless => name, stful => widget.name
    15. Image.assets, .network, .file (fit, width, height) 
```

</details>

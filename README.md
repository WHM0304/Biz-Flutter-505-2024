# Flutter & Dart Project

## SDK 설치

- `https://flutter.dev` 에서 `flutter sdk` 다운로드
- 압축풀기 : `c:\dev\flutter` 폴더에 압축풀기
- `시스템 환경변수 path` 에 `flutter/bin` 폴더 지정해 주기
- `cmd`창에서 `flutter`명령 입력하여 확인하기
- `vscode` 터미널 창에서 `flutter` 명령 입력확인하기

## vsCode 확장팩 설치

- `flutter` 검색하여 `flutter`, `fluterr widget snapshot` , `flutter files` 도구 설치하기
- `dart` 검색하여 `dart lang` : 팩 설치확인

## flutter 와 Android studio 연결하기

- `flutter doctor`
- `Android cmd-line toolchain` 설치
- `flutter doctor --android-licenses`

### 문제 발생하면

- `dart pub cache repair`
- `dart pub cache clean`

### 프로젝트 만들기

- `flutter create --org=com.callor hello`

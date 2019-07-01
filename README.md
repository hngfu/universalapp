# 유니버설 영화 앱

## 23-1. 유니버설 앱 만들기

### 배운점

#### info.plist의 `Main storyboard file base name (iPad)` 와 `Main storyboard file base name (iPhone)`을 이용하면 인터페이스 빌더에서 스토리보드 변경 가능

### 실행화면

<img width="400" src="https://user-images.githubusercontent.com/38850628/60413061-76e97f80-9c0e-11e9-8bb6-951074ae7e87.png">

## 23-2. 앱 지역화 L10n - 언어

### 배운점

#### Localization을 사용하는 방법에 대해 배움

맨 처음 Project -> Info -> Localizations -> 지원할 언어 추가 후
`Localizable.strings`라는 이름의 Strings File을 만들거나
스토리보드에서 `Localization`을 설정해서 할 수 있음.

```swift
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

//Localizable.strings
"Language" = "한국어";

//ViewController
languageLabel.text = "Language".localized
```
위와같이 사용 가능


### 실행화면

<img width="400" src="https://user-images.githubusercontent.com/38850628/60419892-54ad2d00-9c21-11e9-8385-efb05c99367f.gif">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60419893-54ad2d00-9c21-11e9-980a-bbfee8c92ec3.gif">
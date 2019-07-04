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

## 23-3. 앱 국제화 I18n - 언어와 지역

### 배운점

#### 어마무시하게 개꿀~ 기능이 많은 `Locale` 구조체에 대해 배웠다.

#### 지역이든 뭐든 내가 원하는 기준으로 표시하는 방법을 배웠다.

아래 코드를 활용하면 가능.

```swift
Bundle.main.localizedString(forKey: self, value: nil, table: table)
```

### 실행화면

<img width="400" src="https://user-images.githubusercontent.com/38850628/60598548-d51d8a80-9de7-11e9-8cf1-019fb4f55fd8.png">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60598549-d5b62100-9de7-11e9-97d4-1fea3e69ded5.png">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60598550-d5b62100-9de7-11e9-8de2-6df1741cca58.png">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60598551-d5b62100-9de7-11e9-90a7-6f361eadae4f.png">

## 23-4. 앱 파편화 - 디바이스/시뮬레이터/iOS 버전

### 배운점

#### Xcode -> Preferences -> Components에서 이전 iOS 버전의 시뮬레이터를 다운받을 수 있다.

### 실행화면

<img width="400" src="https://user-images.githubusercontent.com/38850628/60647008-acdd6c80-9e77-11e9-985d-bdf52ad37123.PNG">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60647166-08a7f580-9e78-11e9-96a8-80da0b3bec68.PNG">

<img width="400" src="https://user-images.githubusercontent.com/38850628/60680936-33219f00-9ec8-11e9-902f-b96430d0defb.gif">

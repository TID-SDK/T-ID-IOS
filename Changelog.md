### `T-ID 2.0.3 @ 2026-09-04`
#### changed
-  updated app2web auth base url 


### `T-ID 2.0.2 @ 2026-07-22`
#### fixed
-  fixed imports for SPM 


### `T-ID 2.0.1 @ 2026-07-13`
#### fixed
-  fixed imports for SPM 


### `T-ID 2.0.0 @ 2026-07-03`
#### changed
-  migrated to ASWebAuthenticationSession 
-  updated docs 
-  deleted deprecated TIDBuilder 


### `T-ID 1.8.0 @ 2026-06-15`
#### added
-  added ASWebAuthenticationSession availability 


### `T-ID 1.7.0 @ 2026-04-24`
#### changed
-  Bump xcode up to 26.2 
#### fixed
-  add UIDesignRequiresCompatibility flag for disable liquid glass 


### `T-ID 1.6.1 @ 2026-03-06`
#### added
-  added swiftlint in T-ID 


### `T-ID 1.6.0 @ 2025-09-26`
#### changed
-  Bump TCSSSLPinningPublic up to 11.4.0 


### `T-ID 1.5.7 @ 2025-09-12`
#### added
-  Send sdkVersion in redirect url 


### `T-ID 1.5.6 @ 2025-06-09`
#### changed
-  podfile removed 
-  rename TinkoffAuthID-Example in T-ID-Example 


### `T-ID 1.5.5 @ 2025-05-06`
#### fixed
-  Added UITest optimization and fixing coloring 


### `T-ID 1.5.4 @ 2025-04-25`
#### changed
-  add geko on ci 
#### fixed
-  fix flucky tests vm 


### `T-ID 1.5.3 @ 2025-04-11`
#### added
-  add geko support 
#### fixed
-  Revert tidAuthExample universalLinkOnly = false 


### `T-ID 1.5.2 @ 2025-04-08`
#### added
-  T-ID demo. Added customizing client for QA purpose and some improvements 
#### fixed
-  Revert tidAuthExample universalLinkOnly = false 
-  add pdf files to resource bundle 
-  Added support closing WKWebView by swipe action 


### `T-ID 1.5.1 @ 2025-04-01`
#### added
-  Added new verification screen for Mweb2app2web 


### `T-ID 1.5.0 @ 2025-03-17`
#### added
-  Added Mweb2app2web deeplink builder and Main Screen for TID Example App 
#### fixed
-  Fixed T-ID UIKit button tap for iOS 18.0 


### `T-ID 1.4.0 @ 2025-03-04`
#### changed
-  xcode version updated to 16.2 

#### ⚙️ API changes
- ⚠️ `ABI breakage: func DebugTIDFactory.build() has return type change from TID.ITID to any TID.ITID`
- ⚠️ `ABI breakage: var DefaultAuthWebViewSourceProvider.instance has declared type change from TID.IAuthWebViewSourceProvider to any TID.IAuthWebViewSourceProvider`
- ⚠️ `ABI breakage: accessor DefaultAuthWebViewSourceProvider.instance.Get() has return type change from TID.IAuthWebViewSourceProvider to any TID.IAuthWebViewSourceProvider`
- ⚠️ `ABI breakage: protocol EnvironmentConfiguration has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol EnvironmentConfiguration has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol IAuthWebViewSourceProvider has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol IAuthWebViewSourceProvider has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol ITAuthInitiator has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITAuthInitiator has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol ITAuthCallbackHandler has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITAuthCallbackHandler has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol ITCredentialsRefresher has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITCredentialsRefresher has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol ITSignOutInitiator has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITSignOutInitiator has added inherited protocol Copyable`
- ⚠️ `ABI breakage: func ITSignOutInitiator.signOut(with:tokenTypeHint:completion:) has parameter 2 type change from (Swift.Result<(), Swift.Error>) -> () to (Swift.Result<(), any Swift.Error>) -> ()`
- ⚠️ `ABI breakage: protocol ITID has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITID has added inherited protocol Copyable`
- ⚠️ `ABI breakage: protocol ITIDFactory has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol ITIDFactory has added inherited protocol Copyable`
- ⚠️ `ABI breakage: func ITIDFactory.build() has return type change from TID.ITID to any TID.ITID`
- ⚠️ `ABI breakage: protocol TargetAppConfiguration has added inherited protocol Escapable`
- ⚠️ `ABI breakage: protocol TargetAppConfiguration has added inherited protocol Copyable`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:appConfiguration:environmentConfiguration:) has parameter 2 type change from TID.TargetAppConfiguration to any TID.TargetAppConfiguration`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:appConfiguration:environmentConfiguration:) has parameter 3 type change from TID.EnvironmentConfiguration to any TID.EnvironmentConfiguration`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:) has parameter 3 type change from TID.TargetAppConfiguration to any TID.TargetAppConfiguration`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:) has parameter 4 type change from TID.EnvironmentConfiguration to any TID.EnvironmentConfiguration`
- ⚠️ `ABI breakage: func TIDBuilder.build() has return type change from TID.ITID to any TID.ITID`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:app:environment:webViewSourceProvider:) has parameter 4 type change from TID.IAuthWebViewSourceProvider? to (any TID.IAuthWebViewSourceProvider)?`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 2 type change from TID.TargetAppConfiguration to any TID.TargetAppConfiguration`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 3 type change from TID.EnvironmentConfiguration to any TID.EnvironmentConfiguration`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 4 type change from TID.IAuthWebViewSourceProvider? to (any TID.IAuthWebViewSourceProvider)?`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:app:environment:webViewSourceProvider:) has parameter 5 type change from TID.IAuthWebViewSourceProvider? to (any TID.IAuthWebViewSourceProvider)?`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 3 type change from TID.TargetAppConfiguration to any TID.TargetAppConfiguration`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 4 type change from TID.EnvironmentConfiguration to any TID.EnvironmentConfiguration`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:webViewSourceProvider:) has parameter 5 type change from TID.IAuthWebViewSourceProvider? to (any TID.IAuthWebViewSourceProvider)?`
- ⚠️ `ABI breakage: func TIDFactory.build() has return type change from TID.ITID to any TID.ITID`
- ⚠️ `ABI breakage: func TTokenPayload.encode(to:) has parameter 0 type change from Swift.Encoder to any Swift.Encoder`
- ⚠️ `ABI breakage: constructor TTokenPayload.init(from:) has parameter 0 type change from Swift.Decoder to any Swift.Decoder`

### `T-ID 1.3.0 @ 2025-02-24`
#### changed
-  Сделать запуск тестов на тачках с arm64 
-  Migrate to adhoc 


### `T-ID 1.2.2 @ 2025-02-10`
#### changed
-  Сделал динамическом имя для класса перехватчика objc exception's 


### `T-ID 1.2.1 @ 2025-02-03`
#### changed
-  Обновление документации в партнерке T-ID 


### `T-ID 1.2.0 @ 2025-01-22`
#### added
-  Added UI Tests on Critical path 


### `T-ID 1.1.0 @ 2024-11-25`
#### added
-  Added new mode for TAuth 
#### changed
-  Make ipa.srv-hub host more preferrable than tinkoff 

#### ⚙️ API changes
- ⚠️ `ABI breakage: func ITAuthInitiator.startTAuth(phone:_:) is a new API without @available attribute`
- ⚠️ `ABI breakage: func ITAuthInitiator.startTAuth(phone:_:) is a new API without @available attribute`
- ⚠️ `ABI breakage: enumelement TAuthError.invalidPhone is a new API without @available attribute`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:mode:app:environment:) is a new API without @available attribute`
- ⚠️ `ABI breakage: constructor TIDBuilder.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:) is a new API without @available attribute`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:app:environment:webViewSourceProvider:) is a new API without @available attribute`
- ⚠️ `ABI breakage: constructor TIDFactory.init(clientId:callbackUrl:mode:appConfiguration:environmentConfiguration:webViewSourceProvider:) is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TMode is a new API without @available attribute`

### `T-ID 1.0.5 @ 2024-10-01`
#### changed
-  bundle path changed 


### `T-ID 1.0.4 @ 2024-09-23`
#### changed
-  podspec resources changed to bundle 


### `T-ID 1.0.3 @ 2024-09-12`
#### changed
-  Update completion call and error detection 
#### fixed
-  fixed names tests 


### `T-ID 1.0.2 @ 2024-08-26`
#### fixed
-  host fixed 


### `T-ID 1.0.1 @ 2024-08-16`
#### added
-  Add screen for starting openbanking flow 
#### changed
-  copyrights and readme updated 
#### fixed
-  T-ID debug example fixed 


### `T-ID 1.0.0 @ 2024-07-17`
#### added
-  migration guide added 
-  tid opensource diff added 
#### changed
-  T-logo for compact TID button 
-  tid renamed 
-  url fixed 
-  T-ID library minor changes 


### `TinkoffID 4.0.1 @ 2024-07-01`
#### changed
-  tid readme updated 
-  tid hosts updated 


### `TinkoffID 4.0.0 @ 2024-06-24`
#### changed
-  source files renamed 
-  script opensource url updated 
#### fixed
-  TID fixed when using from SPM 

#### ⚙️ API changes
- ⚠️ `ABI breakage: class DebugTIDFactory is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITAuthInitiator is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITAuthCallbackHandler is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITCredentialsRefresher is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITSignOutInitiator is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITID is a new API without @available attribute`
- ⚠️ `ABI breakage: protocol ITIDFactory is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TApp is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TAuthError is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TEnvironment is a new API without @available attribute`
- ⚠️ `ABI breakage: class TIDBuilder is a new API without @available attribute`
- ⚠️ `ABI breakage: struct TIDButtonConfiguration is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TIDButtonSize is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TIDButtonColorStyle is a new API without @available attribute`
- ⚠️ `ABI breakage: enum TIDButtonBuilder is a new API without @available attribute`
- ⚠️ `ABI breakage: class TIDFactory is a new API without @available attribute`
- ⚠️ `ABI breakage: struct TTokenPayload is a new API without @available attribute`
- ⛔️ `ABI breakage: class DebugTinkoffIDFactory has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffAuthInitiator has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffAuthCallbackHandler has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffCredentialsRefresher has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffSignOutInitiator has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffID has been removed`
- ⛔️ `ABI breakage: protocol ITinkoffIDFactory has been removed`
- ⛔️ `ABI breakage: enum TinkoffApp has been removed`
- ⛔️ `ABI breakage: enum TinkoffAuthError has been removed`
- ⛔️ `ABI breakage: enum TinkoffEnvironment has been removed`
- ⛔️ `ABI breakage: class TinkoffIDBuilder has been removed`
- ⛔️ `ABI breakage: struct TinkoffIDButtonConfiguration has been removed`
- ⛔️ `ABI breakage: enum TinkoffIDButtonSize has been removed`
- ⛔️ `ABI breakage: enum TinkoffIDButtonColorStyle has been removed`
- ⛔️ `ABI breakage: enum TinkoffIDButtonBuilder has been removed`
- ⛔️ `ABI breakage: class TinkoffIDFactory has been removed`
- ⛔️ `ABI breakage: struct TinkoffTokenPayload has been removed`

### `TinkoffID 3.0.0 @ 2024-06-14`
#### changed
-  repository adjustments for opensource scripts 
-  TCSSSLPinningPublic module name changed 
-  swift package updated 
-  update button title in tinkoff id 

#### ⚙️ API changes
- ⚠️ `ABI breakage: var EnvironmentConfiguration.hostAndPinsUrl has mangled name changing from 'TinkoffID.EnvironmentConfiguration.hostAndPinsUrl : Foundation.URL' to 'TinkoffID.EnvironmentConfiguration.hostAndPinsUrl : Swift.Optional<Swift.String>'`
- ⛔️ `ABI breakage: var EnvironmentConfiguration.hostAndPinsUrl has declared type change from Foundation.URL to Swift.String?`
- ⚠️ `ABI breakage: accessor EnvironmentConfiguration.hostAndPinsUrl.Get() has mangled name changing from 'TinkoffID.EnvironmentConfiguration.hostAndPinsUrl.getter : Foundation.URL' to 'TinkoffID.EnvironmentConfiguration.hostAndPinsUrl.getter : Swift.Optional<Swift.String>'`
- ⛔️ `ABI breakage: accessor EnvironmentConfiguration.hostAndPinsUrl.Get() has return type change from Foundation.URL to Swift.String?`
- ⚠️ `ABI breakage: var TargetAppConfiguration.authDomains is a new API without @available attribute`
- ⛔️ `ABI breakage: var TargetAppConfiguration.authDomains has been added as a protocol requirement`
- ⚠️ `ABI breakage: var TinkoffApp.authDomains is a new API without @available attribute`
- ⚠️ `ABI breakage: var TinkoffEnvironment.hostAndPinsUrl has mangled name changing from 'TinkoffID.TinkoffEnvironment.hostAndPinsUrl : Foundation.URL' to 'TinkoffID.TinkoffEnvironment.hostAndPinsUrl : Swift.Optional<Swift.String>'`
- ⛔️ `ABI breakage: var TinkoffEnvironment.hostAndPinsUrl has declared type change from Foundation.URL to Swift.String?`
- ⚠️ `ABI breakage: accessor TinkoffEnvironment.hostAndPinsUrl.Get() has mangled name changing from 'TinkoffID.TinkoffEnvironment.hostAndPinsUrl.getter : Foundation.URL' to 'TinkoffID.TinkoffEnvironment.hostAndPinsUrl.getter : Swift.Optional<Swift.String>'`
- ⛔️ `ABI breakage: accessor TinkoffEnvironment.hostAndPinsUrl.Get() has return type change from Foundation.URL to Swift.String?`
- ⛔️ `ABI breakage: class TinkoffIDButtonBuilder is now without final`
- ⛔️ `ABI breakage: class TinkoffIDButtonBuilder has been changed to a enum`
- ⛔️ `ABI breakage: func TinkoffIDButtonBuilder.build(configuration:title:badge:) is now without final`
- ⛔️ `ABI breakage: func TinkoffIDButtonBuilder.buildCompact(colorStyle:) is now without final`
- ⛔️ `ABI breakage: var TargetAppConfiguration.authUrl has been removed`
- ⛔️ `ABI breakage: var TinkoffApp.authUrl has been removed`

### `TinkoffID 2.0.0 @ 2024-05-15`
#### added
-  (REVERTED) Added visibility state for auth button in Example app 
-  Add fallback to ipa.srv-hub.org from tinkoff.ru universal link 
#### changed
-  Added new scheme 
-  moved to ES repository 
#### fixed
-  TinkoffID moved to private repo, deeplink handling fixed in example 


## [1.2.1] - 2022-05-18
### Changed
* Обновлены версии зависимостей окружения
### Fixed
* Фикс сборки при подключении через SPM

## [1.2.0] - 2022-07-26
### Added
* Добавлены альтернативные цветовые схемы
* Добавлена иконка в кнопку без возможности конфигурации
* Добавлено отображение дополнительной информации на кнопке (н-р, информации о cashback)
* Добавлена круглая кнопка с логотипом с 3 цветовыми стилями
### Changed
* Расширены возможности кастомизации кнопки по размеру, форме и типографии
* Обновлен Example для демонстрации возможных конфигураций
* Сделан переход на V1 версию workflows

## [1.1.0] - 2021-07-29
### Added
* Добавлена абстрактная фабрика `ITinkoffIDFactory`
* Добавлен класс `DebugTinkoffIDFactory`, реализующий `ITinkoffIDFactory`
* Добавлен класс `DebugTinkoffID`, реализующий `ITinkoffID`
* Добавлено приложение для отладки интеграции

## [1.0.0] - 2021-02-18
### Added
* Реализована первая версия SDK
* Добавлены модульные тесты
* Добавлена поддержка `Cocoapods` и `SPM`
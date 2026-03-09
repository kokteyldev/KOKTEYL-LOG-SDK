[![Swift](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/KokteylLog.svg?style=flat-square)](https://img.shields.io/cocoapods/v/KokteylLog.svg)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)

# KokteylLog

A lightweight logging SDK for iOS.

## Requirements

- iOS 9.0+
- Xcode 12+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` dependencies:

```swift
.package(url: "https://github.com/kokteyldev/KOKTEYL-LOG-SDK.git", from: "1.1.1")
```

Then add `KokteylLog` to your target dependencies:

```swift
.product(name: "KokteylLog", package: "KokteylLog")
```

Or in Xcode: **File → Add Package Dependencies** and enter the repository URL.

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'KokteylLog'
```

Then run:

```sh
pod install
```

## Usage

### Set Log Level

```objc
KKLogSetLoglevel(KKLogLevelError);
```

Available log levels:

| Level | Description |
|---|---|
| `KKLogLevelSilent` | No logs |
| `KKLogLevelError` | Errors only |
| `KKLogLevelWarning` | Errors and warnings |
| `KKLogLevelInfo` | Errors, warnings, and info |
| `KKLogLevelAll` | Everything |

### Set Log Prefix

```objc
KKLogSetLogPrefix(@"<MySDK> ");
```

### Logging

```objc
KKLogError(@"Something went wrong: %@", errorMessage);
KKLogWarning(@"Unexpected value: %@", value);
KKLogInfo(@"Initialized successfully");
KKLogMessage(@"Custom message");
```

### Get Current Log Level

```objc
KKLogLevel currentLevel = KKLogGetLogLevel();
```

## License

Copyright 2016 KOKTEYL Bilgi Teknolojisi Hizmetleri A.S. All rights reserved.

## Contact

- **Website:** [kokteyl.com](http://www.kokteyl.com/)
- **Email:** info@kokteyl.com
- **Documentation:** [admost.github.io/amrios](https://admost.github.io/amrios)

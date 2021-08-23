# https://github.com/marketplace/actions/swift-create-xcframework
# swift create-xcframework --output "SampleApplication/Frameworks"

rm -rf ../_Binary/BinaryPackages.xcframework

xcodebuild archive -scheme BinaryPackages -sdk iphoneos -archivePath "./build/iphoneos.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme BinaryPackages -sdk iphonesimulator -archivePath "./build/iphonesimulator.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework "./build/iphoneos.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-framework "./build/iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-output "BinaryPackages.xcframework"

rm -rf build
rm -rf BinaryPackages.xcframework/ios-arm64/*
rm -rf BinaryPackages.xcframework/ios-arm64_x86_64-simulator/*

xcodebuild archive -scheme BinaryPackages -sdk iphoneos -archivePath "./build/iphoneos.xcarchive"
xcodebuild archive -scheme BinaryPackages -sdk iphonesimulator -archivePath "./build/iphonesimulator.xcarchive"

mv ./build/iphoneos.xcarchive/Products/Library/Frameworks/BinaryPackages.framework BinaryPackages.xcframework/ios-arm64/BinaryPackages.framework
mv ./build/iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPackages.framework BinaryPackages.xcframework/ios-arm64_x86_64-simulator/BinaryPackages.framework

rm -rf build

mv BinaryPackages.xcframework ../_Binary/BinaryPackages.xcframework

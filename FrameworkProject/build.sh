xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphoneos.xcarchive" -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphonesimulator.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild -create-xcframework \
-framework "./build/iphoneos.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-framework "./build/iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-output "./build/BinaryPackages.xcframework"

# rm -rf build
# xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphoneos.xcarchive" -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphonesimulator.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# cp build/iphoneos.xcarchive/Products/Users/box-jeon/Objects/* build/iphoneos.xcarchive/Products/usr/local/lib/
# cp build/iphonesimulator.xcarchive/Products/Users/box-jeon/Objects/* build/iphonesimulator.xcarchive/Products/usr/local/lib/

# rm -rf ../SampleProject/Frameworks

# xcodebuild -create-xcframework \
# -library "./build/iphoneos.xcarchive/Products/usr/local/lib/libBinaryPackages.a" \
# -library "./build/iphonesimulator.xcarchive/Products/usr/local/lib/libBinaryPackages.a" \
# -output "../SampleProject/Frameworks/BinaryPackages.xcframework"

rm -rf build
xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphoneos.xcarchive" -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme BinaryPackages -archivePath "./build/iphonesimulator.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

rm -rf ../SampleProject/Frameworks

xcodebuild -create-xcframework \
-framework "./build/iphoneos.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-framework "./build/iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
-output "../SampleProject/Frameworks/BinaryPackages.xcframework"

# xcodebuild -create-xcframework \
# -framework "./build/iphoneos.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
# -framework "./build/iphonesimulator.xcarchive/Products/Library/Frameworks/BinaryPackages.framework" \
# -output "../Sources/BinaryPackages/BinaryPackages.xcframework"

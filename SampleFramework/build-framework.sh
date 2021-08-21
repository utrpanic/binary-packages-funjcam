rm -rf ../SampleApplication/Frameworks

xcodebuild archive -scheme SampleFramework -archivePath "./build/iphoneos.xcarchive" -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme SampleFramework -archivePath "./build/iphonesimulator.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework "./build/iphoneos.xcarchive/Products/Library/Frameworks/SampleFramework.framework" \
-framework "./build/iphonesimulator.xcarchive/Products/Library/Frameworks/SampleFramework.framework" \
-output "../SampleApplication/Frameworks/SampleFramework.xcframework"

rm -rf build
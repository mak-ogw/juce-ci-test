rm -rf build_xcode
cmake . -DCMAKE_OSX_ARCHITECTURES="arm64;x86_64" -G "Xcode" -DJUCE_BUILD_EXAMPLES=OFF -Bbuild_xcode
xcodebuild -project build_xcode/juce-ci-test.xcodeproj -configuration Release -target ALL_BUILD

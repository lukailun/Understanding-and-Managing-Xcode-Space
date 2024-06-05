#!/usr/bin/env bash

echo "Removing Derived Data..."
rm -rf ~/Library/Developer/Xcode/DerivedData/

echo "Removing Device Support..."
rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport
rm -rf ~/Library/Developer/Xcode/watchOS\ DeviceSupport
rm -rf ~/Library/Developer/Xcode/tvOS\ DeviceSupport

echo "Removing Old Simulators..."
xcrun simctl delete unavailable

echo "Removing Caches..."
rm -rf ~/Library/Caches/com.apple.dt.Xcode
rm -rf ~/Library/Caches/org.carthage.CarthageKit

if command -v pod  &> /dev/null
then
    pod cache clean --all
fi

echo "Done!"
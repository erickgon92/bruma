#!/bin/bash
set -e

echo '----FLUTTER CLEANUP----'
flutter clean cached -all
echo '- cleaned flutter caches'
rm -rf .flutter-plugins
echo '- removed .flutter-plugins'
echo '----FLUTTER CLEANUP COMPLETE----'
echo '----IOS CLEANUP----'
rm -Rf ios/Pods
echo '- removed ios/Pods'
rm ios/Podfile
echo '- removed ios/Podfile'
rm -Rf ios/.symlinks
echo '- removed ios/.symlinks'
rm -Rf ios/Flutter/Flutter.framework
echo '- removed ios/Flutter/Flutter.framework'
rm -Rf ios/Flutter/Flutter.podspec
echo '- removed ios/Flutter/Flutter.podspec'
echo '----IOS CLEANUP COMPLETE----'
echo 'ALL CLEAN!'
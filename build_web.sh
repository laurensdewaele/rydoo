echo Building for web...
flutter build web
cp -R ./build/web ../rydoo_web
cd ../rydoo_web
firebase deploy
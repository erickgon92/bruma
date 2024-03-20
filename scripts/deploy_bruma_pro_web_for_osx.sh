#!/bin/bash
set -e

flutter clean
flutter build web --web-renderer=canvaskit --release
scp -r -P 85 build/web/* brumadep@brumadepensares.com:/home/brumadep/public_html/

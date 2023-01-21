#!/bin/bash

if [ "$1" = "build:linux" ]; then
  flutter build linux --release
elif [ "$1" = "test" ]; then
  flutter test
elif [ "$1" = "run" ]; then
  flutter run
else
  echo "dev.sh development utility
  build:linux build linux app
  test        do test
  run         run local
  "
fi

exit 0
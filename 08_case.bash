#!/usr/bin/env bash

# case "$1" in
#   (apple)
#     echo "Apple !!" ;;
#   (banana)
#     echo "Bananaa !!" ;;
#   (orange|lemon)
#     echo "Eww !!" ;;
#   (*)
#     echo "Unknown fruit!" ;;
# esac

### Challenge
case "$1" in
  (jpg|jpeg)
    echo "It is jpeg." ;;
  (png)
    echo "It is png." ;;
  (gif)
    echo "It is gif." ;;
  (*)
    echo "$1 is not an image!" ;;
esac
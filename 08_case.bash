#!/usr/bin/env bash

case "$1" in
  (apple)
    echo "Apple !!" ;;
  (banana)
    echo "Bananaa !!" ;;
  (orange|lemon)
    echo "Eww !!" ;;
  (*)
    echo "Unknown fruit!" ;;
esac
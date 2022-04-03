#!/usr/bin/env bash
pkg_file="package.json"
txt=${1:-'"version":'}
echo $txt
ver_txt=$(grep -F $txt $pkg_file | sed -e 's/[^0-9.]//g')
echo $ver_txt

upgrade() {
  pkg_file="package.json"

  ver_txt=$(grep -F '"version":' $pkg_file | sed -e 's/[^0-9.]//g')

  major=$(cut -d "." -f1 <<<$ver_txt)
  minor=$(cut -d "." -f2 <<<$ver_txt)
  patch=$(cut -d "." -f3 <<<$ver_txt)

  old_ver="\"version\": \"$major.$minor.$patch\""
  new_ver="\"version\": \"$major.$minor.$((patch + 1))\""

  sed -i '' "s/$old_ver/$new_ver/" $pkg_file

  echo "📦📦📦 Version upgraded: $major.$minor.$patch --> $major.$minor.$((patch + 1))"

  echo "📦📦📦 Updating dependencies..."
  # npm install

  echo "Sleep for 5 seconds..."
  sleep 5
  for i in {1..5}; do
    echo -ne "."
  done

  echo "📦📦📦 Publishing to npm..."
  # npm publish
}

# upgrade

# packages=("core" "react" "shopify")

# for package in "${packages[@]}"; do
#   echo -ne "\nUpgrading @weaverse/$package..."
#   cd ./packages/$package
#   upgrade $package
# done

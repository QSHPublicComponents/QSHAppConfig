#!/bin/bash

git stash
git pull origin master --tags
git stash pop

VersionString=`grep -E 's.version.*=' QSHAppConfig.podspec`
VersionNumber=`tr -cd 0-9 <<<"$VersionString"`

NewVersionNumber=$(($VersionNumber + 1))
LineNumber=`grep -nE 's.version.*=' QSHAppConfig.podspec | cut -d : -f1`
sed -i "" "${LineNumber}s/${VersionNumber}/${NewVersionNumber}/g" QSHAppConfig.podspec

echo "current version is ${VersionNumber}, new version is ${NewVersionNumber}"

git add .
git commit -am ${NewVersionNumber}
git tag ${VersionString}
git push  --tags
cd ~/.cocoapods/repos/qshreaderspec && git pull origin master && cd - && pod repo push qshreaderspec QSHAppConfig.podspec --verbose --allow-warnings


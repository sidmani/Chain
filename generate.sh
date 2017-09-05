#!/bin/bash

create_yml() {
echo "
key.request: source.request.editor.open.interface 
key.name: \"47398610-AF42-4F99-B6F2-25A587793CEB\"
key.compilerargs:
- \"-target\"
- \"arm64-apple-ios11.0\"
- \"-sdk\"
- \"/Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.0.sdk\"
- \"-I\"
- \"-Xcc\"
key.modulename: \"$1\"
key.toolchains:
- \"com.apple.dt.toolchain.XcodeDefault\"
" > temp.yml
}

mkdir -p ./Chain/Classes/Intermediates

# get all types that implement ChainWrappedType
grep "extension [A-Za-z0-9 ]*:[ ]*ChainWrappedType" ./Chain/Classes/Chain.swift | sed -e "s/extension //" -e "s/ //" -e "s/:.*//" | while read -r class ; do
create_yml $class
sourcekitten request --yaml temp.yml | 
grep "\"key.sourcetext\" : " | 
cut -c 22- | 
perl -pe 's/\\n/\n/g' | 
sed -e 's/\\\/\\\//\/\//g' -e 's/^"//' -e 's/"$//'  > ./Chain/Classes/Intermediates/${class}.swift
done

~/Downloads/Sourcery-0.8.0-initial/bin/sourcery --sources ./Chain/Classes --templates ./Chain/Assets/Stencil --output ./Chain/Generated

# rm -rf ./Chain/Classes/Intermediates
rm temp.yml

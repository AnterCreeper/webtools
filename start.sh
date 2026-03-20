#!/bin/bash
export QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"
setenv() {
while read -r i ; do eval "export ${i}" ; done <<<$(grep -vxE '[[:blank:]]*([#;].*)?' $1)
}
{
setenv /etc/webtools/qt-web-extractor.conf
/usr/local/bin/qt-web-extractor serve
} &
{
setenv /etc/webtools/guiless-bing-search.conf
/usr/local/bin/guiless-bing-search
} &
wait

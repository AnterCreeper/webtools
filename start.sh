#!/bin/bash
export QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"
setenv() {
while read -r i ; do eval "export ${i}" ; done <<<$(grep -vxE '[[:blank:]]*([#;].*)?' $1)
}
privoxy /etc/privoxy/config
{
export ALL_PROXY=http://127.0.0.1:8118
setenv /etc/webtools/qt-web-extractor.conf
/usr/local/bin/qt-web-extractor serve
} &
{
setenv /etc/webtools/guiless-search.conf
/usr/local/bin/guiless-search
} &
wait

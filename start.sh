#!/bin/bash
export QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"
{
source /etc/webtools/qt-web-extractor.conf
/usr/local/bin/qt-web-extractor serve
} &
{
source /etc/webtools/guiless-bing-search.conf
/usr/local/bin/guiless-bing-search
} &
wait

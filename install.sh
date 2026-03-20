#!/bin/bash
sed -i 's|http://deb.debian.org|http://mirrors.cernet.edu.cn|g' /etc/apt/sources.list.d/debian.sources
apt update
apt install -y -qq python3-build python3-installer python3-setuptools \
		   python3-pyside6.qtcore python3-pyside6.qtgui python3-pyside6.qtwidgets \
		   python3-pyside6.qtpdf python3-pyside6.qtwebenginecore

cd ./qt-web-extractor
python3 -m build --wheel --no-isolation
python3 -m installer dist/*.whl
install -Dm644 qt-web-extractor.conf.example /etc/webtools/qt-web-extractor.conf
sed -i 's|HOST=127.0.0.1|HOST=0.0.0.0|g' /etc/webtools/qt-web-extractor.conf

cd ../GUILessBingSearch
install -Dm755 guiless_bing_search.py /usr/local/bin/guiless-bing-search
install -Dm644 guiless-bing-search.conf.example /etc/webtools/guiless-bing-search.conf
sed -i 's|HOST=127.0.0.1|HOST=0.0.0.0|g' /etc/webtools/guiless-bing-search.conf

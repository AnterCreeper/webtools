# Docker Image for Agentic Web Tools

If any questions, welcome for Issues & PRs  
如果有疑问，欢迎提交Issues或PR

**WARNING! This Project is not been fully long-term productive tested and without warranty of any kind, use at your own risk!**   
**警告！该项目未经充分的长期生产环境测试，作者不作任何保证，使用需要你自己衡量**

### License

This project is licensed under the GPL-3.0-or-later. **DO NOT** download or clone this project until you have read and agree the LICENSE.  
该项目采用 `GPL-3.0 以及之后版本` 授权。当你下载或克隆项目时，默认已经阅读并同意该协定。

### Overview

This Project contains scripts for building Docker Image, which consists of [guiless-search](https://github.com/wszqkzqk/guiless-search) and [qt-web-extractor](https://github.com/wszqkzqk/qt-web-extractor). For more information, please refer to [Blog](https://wszqkzqk.github.io/2026/02/26/OpenWebUI-Agentic-Search-Configuration).  
该项目包含了构建 Docker 镜像的脚本，其包含了 [guiless-search](https://github.com/wszqkzqk/guiless-search) 和 [qt-web-extractor](https://github.com/wszqkzqk/qt-web-extractor)。更多信息请参见 [博客](https://wszqkzqk.github.io/2026/02/26/OpenWebUI-Agentic-Search-Configuration)。

Besides, it includes `privoxy` for redirect proxy with rules, which would be very useful for China(Mainland) users.  
此外，它包含了 `privoxy` 用于代理分流，这对中国(大陆)的用户会很有帮助。

### Usage

You need to modify the `rules.action` before deployment.  
在部署之前请先修改 `rules.action`。

```
git clone https://github.com/antercreeper/webtools
cd webtools
git submodule update --init
docker build -t webtools .
```

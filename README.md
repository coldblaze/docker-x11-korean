---
tags: [macos, ubuntu, x11, korean, docker, ko_kr, utf-8, 한글, locale]
---
[![](https://images.microbadger.com/badges/version/coldblaze/x11-korean.svg)](https://microbadger.com/images/coldblaze/x11-korean "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/coldblaze/x11-korean:18.04.1.svg)](https://microbadger.com/images/coldblaze/x11-korean:18.04.1 "Get your own image badge on microbadger.com")

# coldblaze/x11-korean : Docker Ubuntu 한글 사용

**이 글의 코드 : [coldblaze/docker-x11-korean](https://github.com/coldblaze/docker-x11-korean)**

ubuntu 18.04, X11 에서 한글을 사용하기 위한 docker image이다.  
**NOTE : DEPRICATED. Check [coldblaze/docker-pyqt5-korean](https://github.com/coldblaze/docker-pyqt5-korean)**

*Note : GUI 앱에서 한글 입력은 불가능하다.*

### docker image를 받거나,

```bash
$ ./x11-korean.sh pull
```

### Dockerfile 파일로 image 생성.
```bash
$ docker build --no-cache --tag coldblaze/x11-korean:18.04.1 --file Dockerfile .
```

### macOS 사용자라면,
socat과 XQuartz를 설치하고, socat-macos.sh를 사용한다.  
socat는 brew로 설치하고, XQuartz는 brew를 이용해 설치하거나 혹은 https://www.xquartz.org 에서 .dmg를 다운로드, 설치한다.
```bash
$ brew install socat
$ brew install xquartz
```
XQuartz의 환경설정 > 보안 > '네트워크 클라이언트에서의 연결을 허용'을 체크한다.  
그리고 socat-macos.sh 실행 후 XQuartz를 다시 실행한다.

*Note : socat 실행 후 XQuartz를 실행.*
```bash
$ ./socat-macos.sh
```
리눅스, Xwindow Desktop을 사용하고 있다면 바로

### container 실행.
실행하기 전, x11-korean.sh을 열어 각 설정값을 확인한다.
```bash
$ ./x11-korean.sh run
```

### 테스트
```bash
root:x11-korean# apt-get update
root:x11-korean# apt-get install x11-apps
root:x11-korean# xeyes
root:x11-korean# apt-get install chromium-browser
root:x11-korean# chromium-browser --no-sandbox
```

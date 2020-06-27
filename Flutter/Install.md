# Install on Mac  

1. download  
https://flutter.dev/docs/get-started/install  
현재 버전지.. 1.17.4   

2. download sdk (위 페이지에 있음)    

3. 압축을 풀고 원하는 위치로 이동 ~/ 으로 이동 시킴      

4. ~/.bash_profile 에 환경변수 수정   
export PATH="~/flutter/bin:$PATH"    

5. flutter precache    

6. flutter doctor를 시작해보자.    

7. xcode를 깔자 (이미 깔려 있다면 패스)  
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer  
sudo xcodebuild -runFirstLaunch   

8. 시뮬레이터를 열어 보자.  
open -a Simulator   

9. 이제 환경 구성이 끝이 났다. 간-편-  앱을 하나 만들어 보자.  
디렉토리를 만들고 싶은 위치로 이동해서 샘플 앱을 만들어 준다.  
flutter create SimpleApp   

10. 생성된 디렉토리 안으로 이동해서 실행해 보자.  
cd SimpleApp  
flutter run   

11. Deploy 해보자.   
iOS에 배포하기 위해서는 third party로 CocoaPods가 필요하니 설차히자.  
sudo gem install cocoapods  
pod setup  
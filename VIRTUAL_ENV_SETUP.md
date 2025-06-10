# 가상환경 설정 가이드

이 프로젝트는 크로스 플랫폼 가상환경을 지원합니다.

**⚠️ 중요: 모든 팀원은 Python 3.10.12 (또는 Python 3.10.x)를 사용해주세요!**

## 🚀 빠른 시작

### Linux / macOS
```bash
# 가상환경 활성화
./activate.sh

# 또는 수동으로
source venv/bin/activate
```

### Windows
```cmd
# 가상환경 활성화 (CMD)
activate.bat

# 또는 PowerShell에서
venv\Scripts\Activate.ps1

# 또는 수동으로 (CMD)
venv\Scripts\activate.bat
```

## 🔧 Python 3.10.12 설치

### Linux (Ubuntu/Debian)
```bash
# Python 3.10 설치 확인
python3 --version

# 필요시 설치
sudo apt update
sudo apt install python3.10 python3.10-venv python3.10-pip
```

### macOS
```bash
# Homebrew로 설치
brew install python@3.10

# 또는 pyenv 사용
brew install pyenv
pyenv install 3.10.12
pyenv global 3.10.12
```

### Windows
1. [Python.org](https://www.python.org/downloads/)에서 Python 3.10.12 다운로드
2. 설치 시 "Add Python to PATH" 체크
3. 설치 확인: `python --version`

## 📝 상세 사용법

### 1. 가상환경 생성 (이미 생성됨)
```bash
# Linux/macOS
python3 -m venv venv

# Windows
python -m venv venv
```

### 2. 가상환경 활성화
활성화 후 프롬프트가 `(venv)`로 시작하면 성공입니다.

### 3. 패키지 설치
```bash
# requirements.txt에서 패키지 설치
pip install -r requirements.txt

# 개별 패키지 설치
pip install 패키지명
```

### 4. 새 패키지 추가 후 저장
```bash
# 현재 설치된 패키지를 requirements.txt에 저장
pip freeze > requirements.txt
```

### 5. 가상환경 비활성화
```bash
deactivate
```

## 📂 파일 구조
```
CoinRL/
├── venv/              # 가상환경 (git에서 제외됨)
├── activate.sh        # Linux/macOS 활성화 스크립트
├── activate.bat       # Windows 활성화 스크립트
├── requirements.txt   # 패키지 목록
├── .gitignore        # git 제외 목록
└── VIRTUAL_ENV_SETUP.md  # 이 파일
```

## 🌟 팁

1. **IDE 설정**: VS Code나 PyCharm에서 인터프리터를 `./venv/bin/python` (Linux/macOS) 또는 `.\venv\Scripts\python.exe` (Windows)로 설정하세요.

2. **의존성 관리**: 새 패키지 설치 후 `pip freeze > requirements.txt`로 저장하는 습관을 기르세요.

3. **팀 작업**: 다른 팀원이 프로젝트를 클론한 후 `./activate.sh` (Linux/macOS) 또는 `activate.bat` (Windows)만 실행하면 됩니다.

4. **가상환경 삭제**: 필요시 `venv` 폴더를 삭제하고 다시 생성하면 됩니다.

5. **버전 확인**: 가상환경 활성화 후 `python --version`으로 Python 버전을 확인하세요.

## ❗ 문제해결

### Linux에서 `python3-venv` 패키지가 없다는 오류
```bash
sudo apt install python3.10-venv  # Ubuntu/Debian
sudo yum install python3.10-venv  # CentOS/RHEL
```

### Windows에서 실행 정책 오류
PowerShell을 관리자로 실행 후:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Python 버전이 다른 경우
팀원들 간에 Python 버전이 다르면 패키지 호환성 문제가 발생할 수 있습니다. 
모든 팀원이 Python 3.10.12를 사용하도록 통일해주세요.

## 📋 Git 정보

- ✅ `venv/` 폴더는 `.gitignore`에 의해 **git에서 제외됩니다**
- ✅ 가상환경은 각자의 로컬에서만 생성되고 공유되지 않습니다
- ✅ `requirements.txt`만 공유되어 동일한 패키지 환경을 재현할 수 있습니다 
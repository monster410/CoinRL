@echo off
REM Windows용 가상환경 활성화 스크립트

REM 스크립트가 있는 디렉토리로 이동
cd /d "%~dp0"

REM 가상환경이 존재하는지 확인
if not exist "venv" (
    echo 가상환경이 존재하지 않습니다. 가상환경을 생성합니다...
    python -m venv venv
    if errorlevel 1 (
        echo ❌ 가상환경 생성에 실패했습니다.
        pause
        exit /b 1
    )
    echo ✅ 가상환경이 생성되었습니다.
)

REM 가상환경 활성화
call venv\Scripts\activate.bat

REM pip 업그레이드 및 requirements 설치
if exist "requirements.txt" (
    echo 📦 패키지를 설치하는 중...
    python -m pip install --upgrade pip
    pip install -r requirements.txt
)

echo ✅ 가상환경이 활성화되었습니다!
python --version
echo 📍 가상환경 경로: %VIRTUAL_ENV%
echo.
echo 가상환경을 비활성화하려면 'deactivate' 명령어를 사용하세요.
echo 이 창을 닫지 마세요. 여기서 Python 명령어를 실행하세요. 
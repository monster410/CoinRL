#!/bin/bash

# Linux/macOS용 가상환경 활성화 스크립트

# 스크립트가 있는 디렉토리로 이동
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# 가상환경이 존재하는지 확인
if [ ! -d "venv" ]; then
    echo "가상환경이 존재하지 않습니다. 가상환경을 생성합니다..."
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "❌ 가상환경 생성에 실패했습니다."
        exit 1
    fi
    echo "✅ 가상환경이 생성되었습니다."
fi

# 가상환경 활성화
source venv/bin/activate

# pip 업그레이드 및 requirements 설치
if [ -f "requirements.txt" ]; then
    echo "📦 패키지를 설치하는 중..."
    pip install --upgrade pip
    pip install -r requirements.txt
fi

echo "✅ 가상환경이 활성화되었습니다!"
echo "🐍 Python 버전: $(python --version)"
echo "📍 가상환경 경로: $(which python)"
echo ""
echo "가상환경을 비활성화하려면 'deactivate' 명령어를 사용하세요." 
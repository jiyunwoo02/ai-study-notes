# Zone.Identifier 확장자 지닌 파일 모두 제거
# -- .Zone.Identifier 파일은 Windows에서 인터넷에서 다운로드한 파일에 자동으로 붙는 메타데이터 파일

# PowerShell
Get-ChildItem -Recurse -Filter "*.Zone.Identifier" | Remove-Item -Force

# Bash (WSL)
find . -name "*.Zone.Identifier" -delete
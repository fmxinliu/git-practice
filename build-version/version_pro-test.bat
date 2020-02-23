@echo off
call "%VS100COMNTOOLS%vsvars32.bat"

:: Be careful you cannot using git-bash.exe
"C:\Program Files\Git\bin\bash.exe" version.sh > version_pro\version_pro\Version.cs

devenv version_pro\version_pro\version_pro.csproj /Rebuild "Release"
version_pro\version_pro\bin\Release\version_pro.exe


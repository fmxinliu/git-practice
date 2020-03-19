@call "%VS100COMNTOOLS%vsvars32.bat"

@rem Be careful you cannot using git-bash.exe
@"C:\Program Files\Git\bin\bash.exe" version.sh > version_pro\version_pro\Version.cs
@if not %errorlevel%==0 @exit /B %errorlevel%

@devenv version_pro\version_pro\version_pro.csproj /Rebuild "Release"
@version_pro\version_pro\bin\Release\version_pro.exe


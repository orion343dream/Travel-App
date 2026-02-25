# PowerShell Profile Setup Script for Flutter Development
# This script sets up your PowerShell environment to use Flutter

# Add Flutter to PATH (permanent for this session)
$flutterPath = "C:\Program Files\flutter\bin"

# Check if Flutter path already in PATH
if ($env:Path -notlike "*$flutterPath*") {
    $env:Path += ";$flutterPath"
    Write-Host "✓ Flutter added to PATH" -ForegroundColor Green
} else {
    Write-Host "✓ Flutter already in PATH" -ForegroundColor Green
}

# Create helpful aliases
function f { & "C:\Program Files\flutter\bin\flutter.bat" @args }
function fed { & "C:\Program Files\flutter\bin\flutter.bat" emulators @args }
function fdev { & "C:\Program Files\flutter\bin\flutter.bat" devices @args }
function fdoc { & "C:\Program Files\flutter\bin\flutter.bat" doctor @args }
function fbuild { & "C:\Program Files\flutter\bin\flutter.bat" build @args }
function fclean { & "C:\Program Files\flutter\bin\flutter.bat" clean @args }
function fpub { & "C:\Program Files\flutter\bin\flutter.bat" pub @args }
function ftest { & "C:\Program Files\flutter\bin\flutter.bat" test @args }
function fanalyze { & "C:\Program Files\flutter\bin\flutter.bat" analyze @args }

# Display available commands
Write-Host "`n╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║        Flutter PowerShell Environment - Ready!             ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "`nQuick Commands Available:" -ForegroundColor Yellow
Write-Host "  f [cmd]           - flutter command" -ForegroundColor White
Write-Host "  fdev              - flutter devices" -ForegroundColor White
Write-Host "  fed               - flutter emulators" -ForegroundColor White
Write-Host "  fdoc              - flutter doctor" -ForegroundColor White
Write-Host "  fbuild [target]   - flutter build" -ForegroundColor White
Write-Host "  fclean            - flutter clean" -ForegroundColor White
Write-Host "  fpub [cmd]        - flutter pub" -ForegroundColor White
Write-Host "  ftest             - flutter test" -ForegroundColor White
Write-Host "  fanalyze          - flutter analyze" -ForegroundColor White

Write-Host "`nExamples:" -ForegroundColor Yellow
Write-Host "  f run             - Run current app" -ForegroundColor Gray
Write-Host "  fdev              - List connected devices" -ForegroundColor Gray
Write-Host "  fdoc              - Run flutter doctor" -ForegroundColor Gray
Write-Host "  fbuild apk        - Build Android APK" -ForegroundColor Gray
Write-Host "  fbuild appbundle  - Build Android App Bundle" -ForegroundColor Gray
Write-Host "`n"

Push-Location $PSScriptRoot
.\win_flex.exe first.l
if ($LASTEXITCODE -ne 0) { Write-Error "win_flex failed"; Exit 1 }
gcc lex.yy.c -o first.exe
if ($LASTEXITCODE -ne 0) { Write-Error "gcc failed"; Exit 1 }
Write-Host "Running first.exe. Type text and press Ctrl+Z then Enter to send EOF, or type 'quit' then Enter to exit."
.\first.exe
Pop-Location

@echo off
setlocal enableDelayedExpansion
pushd "%~dp0"

for %%f in ("*.mp4") do (
    set "fileName=%%f"
    set "trimmedName=!fileName:~INSERTNUM!"
    ren "!fileName!" "!trimmedName!"
)

popd
pause

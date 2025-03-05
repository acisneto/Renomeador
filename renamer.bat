@echo off
setlocal enableDelayedExpansion
pushd "%~dp0"

for %%f in ("*.mp4") do (
    set "fileName=%%f"
    set "trimmedName=!fileName:~19!"
    ren "!fileName!" "!trimmedName!"
)

popd
pause
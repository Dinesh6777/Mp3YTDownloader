@echo off
setlocal enabledelayedexpansion

:: Set output directory
set "OUTDIR=My mp3 music"
if not exist "%OUTDIR%" mkdir "%OUTDIR%"

:: Input file with YouTube URLs
set "INPUT=input.txt"

:: Loop through each URL in input.txt
for /F "usebackq delims=" %%A in ("%INPUT%") do (
    set "RAW_URL=%%A"

    :: Extract video ID (token after '=' and before '&')
    for /F "tokens=2 delims==&" %%B in ("%%A") do set "VIDEO_ID=%%B"

    :: Check if an MP3 for this ID already exists
    if exist "%OUTDIR%\* [!VIDEO_ID!].mp3" (
        echo Skipping [!VIDEO_ID!] – already downloaded.
    ) else (
        echo Downloading [!VIDEO_ID!]…
        yt-dlp -x --audio-format mp3 -o "%OUTDIR%/%%(title)s [%%(id)s].%%(ext)s" "!RAW_URL!"
    )
)

echo All done!
pause


# Mp3YTDownloader

A lightweight Windows-only batch toolkit that  
1. Automates installing yt-dlp and FFmpeg into a local tools folder and adds them to your PATH  
2. Reads YouTube URLs from `input.txt`, strips off playlists/indexes, rebuilds a clean watch URL, downloads MP3s named `<Title> [<ID>].mp3` into **My mp3 music**, and skips files already present  

---

## Prerequisites

- Windows 7,8,10 or later  
- PowerShell 5.x or newer (for `Invoke-WebRequest` & `Expand-Archive`)  
- Administrative rights (only needed if you want to update your **User** PATH automatically)  

---

### 3. Manual setup (alternative)

1. Create a `tools` folder inside this project.  
2. Download **yt-dlp.exe** from  
   https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe  
   and save it as `tools\yt-dlp.exe`.  
3. Download **ffmpeg-release-essentials.zip** from  
   https://www.gyan.dev/ffmpeg/builds/ffmpeg-release-essentials.zip  
   and place it in `tools\ffmpeg.zip`.  
4. Extract it so you end up with `tools\ffmpeg\bin\ffmpeg.exe`.  
5. Add both folders to your PATH (User or System):  
   - `C:\path\to\your\repo\tools`  
   - `C:\path\to\your\repo\tools\ffmpeg\bin`  
6. Restart your terminal.

---

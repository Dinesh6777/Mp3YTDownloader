# Mp3YTDownloader
Just 2 clicks to download your favorite Music. Mp3YTDownloader is a lightweight Windows batch tool that automates downloading MP3 audio from YouTube links listed in an input.txt.. It extracts each video’s ID, rebuilds a clean URL, names files by title and ID, skips duplicates, and even provides an installer script to set up yt-dlp and FFmpeg on your machine.


# What Mp3YTDownloader does?

A simple Windows batch script to download MP3 audio from YouTube URLs listed in `input.txt`, using yt-dlp.  
Files are saved with the video title and ID in the folder `My mp3 music`. Already-downloaded videos are automatically skipped.

---

## Prerequisites

- Windows 10 or higher  
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) installed and added to your PATH  
- [ffmpeg](https://ffmpeg.org) installed and added to your PATH (optional; required for some conversions)  
- To know the detailed steps - check here
---

## Installation

1. Download or clone this repository.  
2. Place `Mp3YTDownloader.bat` in your chosen folder.  
3. In the same folder, create `input.txt`.

---

## input.txt Format

Each line in `input.txt` must contain a single YouTube URL. Query parameters like playlists or indexing are ignored.

Example:

```
https://www.youtube.com/watch?v=64zZr3ZUDM0&list=RD8BnXsXPtWXQ&index=3
https://youtu.be/tsf4TMl9AcQ
```

---

## Usage

1. Open Command Prompt.  
2. Navigate to the folder containing `Mp3YTDownloader.bat` and `input.txt`:  

   ```bat
   cd C:\path\to\folder
   ```

3. Run the script:

   ```bat
   Mp3YTDownloader.bat
   ```

4. Wait for downloads to complete. Progress and skip messages appear in the console.  
5. Find your MP3s in the `My mp3 music` folder.

---

## How It Works

- Reads each URL from `input.txt`.  
- Extracts the `VIDEO_ID` after `v=` and before any `&` parameter.  
- Checks for an existing file matching `* [VIDEO_ID].mp3` in `My mp3 music`.  
- If not found, downloads audio with yt-dlp, saving as:

  ```
  <Video Title> [<Video ID>].mp3
  ```

---

## Troubleshooting

- If file names contain invalid Windows characters, yt-dlp will sanitize them automatically.  
- For yt-dlp errors, run `yt-dlp --update` to ensure you have the latest version.  
- If ffmpeg is missing, audio extraction may fail. Install ffmpeg or remove `--audio-format mp3` flag.

---

## Customization

- Change output folder by editing the `OUTDIR` variable at the top of `Mp3YTDownloader.bat`.  
- Modify the output template in the yt-dlp command (`-o "%OUTDIR%/%%(title)s [%%(id)s].%%(ext)s"`).  
- Add logging by redirecting output:  
  ```bat
  Mp3YTDownloader.bat > download.log 2>&1
  ```

---

## Scheduling Automatic Downloads

Use Windows Task Scheduler to automate:

1. Open Task Scheduler and create a new task.  
2. Set trigger (daily, weekly, etc.).  
3. For Action, choose “Start a program” and point to `Mp3YTDownloader.bat`.  
4. Save and test the task.

---

## Next Steps

- Add support for playlists and bulk metadata tagging.  
- Enhance filename sanitization with PowerShell.  
- Integrate a GUI front end for easier configuration.  
- Explore parallel downloads with multiple yt-dlp instances.

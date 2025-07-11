# 📝 Run Batch Files from Notepad++

This guide explains how to execute `.bat` files directly from Notepad++ using built-in features and plugins.

## 🚀 Method 1: Using the Run Menu

### Steps:
1. Open your `.bat` file in Notepad++.
2. Navigate to `Run > Run…` or press `F5`.
3. Enter the following command:
   ```cmd
   cmd /K "cd $(CURRENT_DIRECTORY) && $(FULL_CURRENT_PATH)"
   ```
4. Click **Run** to execute the batch file.
5. (Optional) Click **Save…** to create a shortcut for future use.

### Notes:
- `cmd /K` keeps the terminal open after execution.
- `$(CURRENT_DIRECTORY)` ensures the batch runs from its own folder.
- `$(FULL_CURRENT_PATH)` points to the file you're editing.

## ⚡ Method 2: Using RunMe Plugin

### Installation:
1. Go to `Plugins > Plugins Admin`.
2. Search for **RunMe**, check it, and click **Install**.
3. After restart, use the lightning bolt icon or keyboard shortcut to run the current file.

## 🔗 Method 3: File Link in Script

Add a comment line like this in your batch file:
```bat
rem file:///C:/path/to/your/script.bat
```
Double-clicking the link in Notepad++ will launch the batch file.

---

## 📚 References

- [Stack Overflow: Run batch file from Notepad++](https://stackoverflow.com/questions/4196267/can-someone-tell-me-how-to-run-a-batch-file-from-notepad)
- [Notepad++ Community: Run .bat from Notepad++](https://community.notepad-plus-plus.org/topic/25809/run-bat-from-notepad)
- [Notepad++ User Manual: Run Menu](https://npp-user-manual.org/docs/run-menu/)
- [Notepad++ Community: Execute bat-file from Notepad++](https://community.notepad-plus-plus.org/topic/26045/execute-bat-file-from-notepad)

Let me know if you'd like to wrap this into a PowerShell launcher or integrate it with your automation workflow. I know you’ve got the chops for it!

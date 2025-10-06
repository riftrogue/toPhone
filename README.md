# 📂 toGallary Script for Termux

## 📝 Description

The `toGallary` script is a simple Termux utility that moves one or multiple files from your current Termux directory to the phone's local storage at `/sdcard/termux`. This is useful for quickly transferring files like images, videos, or documents to a folder accessible by your phone's gallery or file manager. 🚀

## 🔑 Grant Storage Permission

Before using the script, ensure Termux has access to your phone's storage. Run the following command:

```bash
termux-setup-storage
```

This creates the `/sdcard` directory and grants necessary permissions. ✅

## 📄 Create the Script File

To create the `toGallary` script, open a new file in `nano`:

```bash
nano ~/toGallary
```

## 🖥️ The Script

Copy and paste the following script into the `nano` editor:

```bash
#!/data/data/com.termux/files/usr/bin/bash

# Check if the target directory exists, create it if not
if [ ! -d "/sdcard/termux" ]; then
    mkdir -p /sdcard/termux
fi

# Check if any arguments are provided
if [ $# -eq 0 ]; then
    echo "Error: No files specified."
    echo "Usage: toGallary <file1> [file2 ...]"
    exit 1
fi

# Move each specified file to /sdcard/termux
for file in "$@"; do
    if [ -f "$file" ]; then
        mv "$file" /sdcard/termux/
        echo "Moved $file to /sdcard/termux/"
    else
        echo "Error: $file not found or is not a file."
    fi
done
```

## 💾 Save and Exit Nano

To save the script and exit `nano`:

1. Press `Ctrl + O` to save.
2. Press `Enter` to confirm the filename.
3. Press `Ctrl + X` to exit.

## 🔧 Make the Script Executable

Make the script executable by running:

```bash
chmod +x ~/toGallary
```

## 🚀 How to Use

1. Place the script in your Termux home directory (`/data/data/com.termux/files/home`) or add it to your PATH.
2. Run the script with one or more files as arguments.

### Examples

- Move a single file:

  ```bash
  toGallary photo.jpg
  ```

  Output: `Moved photo.jpg to /sdcard/termux/`

Move multiple files:

- toGallary image1.png image2.png video.mp4

Output:

```
Moved image1.png to /sdcard/termux/
Moved image2.png to /sdcard/termux/
Moved video.mp4 to /sdcard/termux/
```

## 📍 Output Location

All files moved by the script will be located in `/sdcard/termux/`. You can access this folder using your phone's file manager or gallery app. 🗂️

## 🎉 Done

Your `toGallary` script is ready to use! Enjoy seamless file transfers from Termux to your phone's storage. 😊

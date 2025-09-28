# Google Drive Manager

A terminal-based tool to **view, upload, remove, and schedule backups** of files/folders to Google Drive using `google-drive-ocamlfuse`.

This menu-driven **Bash script** allows seamless file operations on Google Drive directly from the command line and supports **automated daily backups** with cron jobs.

---

## Features

* 📂 **List files/folders** stored in Google Drive
* ⬆️ **Upload** local files/folders to Drive
* ❌ **Remove** files/folders from Drive
* ⏰ **Enable daily backups** at a user-defined time (via cron jobs)
* 🖥️ **Menu-driven interface** for ease of use

---

## Installation & Setup

1. Install `google-drive-ocamlfuse`:

   ```bash
   sudo add-apt-repository ppa:alessandro-strada/ppa
   sudo apt-get update
   sudo apt-get install google-drive-ocamlfuse
   ```

2. Configure with your Google account:

   ```bash
   google-drive-ocamlfuse
   google-drive-ocamlfuse ~/google-drive
   ```

3. Clone this repository and make the script executable:

   ```bash
   chmod +x gdm.sh
   ```

---

## Usage

Run the script:

```bash
./gdm.sh
```

You’ll see a menu like this:

```
Welcome to gdsync
1. List files/folders
2. Upload a file/folder
3. Remove file/folder
4. Enable regular backup
5. Quit
```

---

## Example: Enable Backup

When selecting **option 4**, you can specify:

* File/folder name to back up
* Time (HH MM) for daily backup

A cron job will be automatically created to perform the backup daily.

---

## Tech Stack

* **Bash scripting**
* **google-drive-ocamlfuse** (Google Drive mount)
* **cron** (task scheduling)


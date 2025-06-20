# linux-cmds-in-windows

This guide explains how to create a **persistent alias** in Command Prompt (`cmd.exe`) on Windows so that typing `ll` will execute `dir`.

---

## ✅ Goal

Type `ll` in Command Prompt and get a directory listing (like `ls -l` on Unix):

```cmd
ll
````

Should behave the same as:

```cmd
dir
```

---

## 🧰 Method Overview

We will:

1. Create a script that sets the alias using `doskey`.
2. Register this script to run automatically using Windows Registry.

---

## 🔧 Step-by-Step Guide

### 1. Create Alias Script

1. Open **Notepad**.

2. Paste the following line:

   ```cmd
   doskey ll=dir
   ```

3. Save the file as `init.cmd` in a known location, e.g.:

   ```
   C:\Scripts\init.cmd
   ```

   > 💡 Create the folder `C:\Scripts` if it doesn’t exist.

---

### 2. Update the Windows Registry

1. Press `Win + R`, type `regedit`, and press **Enter**.

2. Navigate to:

   ```
   HKEY_CURRENT_USER\Software\Microsoft
   ```

3. Right-click on `Microsoft` → **New > Key**, name it:

   ```
   Command Processor
   ```

4. Click on the newly created `Command Processor` key.

5. In the right-hand pane, right-click → **New > String Value**, name it:

   ```
   AutoRun
   ```

6. Double-click `AutoRun`, and set its value to:

   ```
   C:\Scripts\init.cmd
   ```

   > ✅ This ensures that every new Command Prompt session runs your alias setup.

---

## 🧪 Test It

1. Close all existing Command Prompt windows.
2. Open a new `cmd.exe`.
3. Type:

   ```cmd
   ll
   ```

   You should see the directory listing.

---

## 📝 Notes

* This method is specific to **cmd.exe** (not PowerShell or Git Bash).
* If you want to remove the alias in future, delete the `AutoRun` string from the registry.
* You can add more `doskey` aliases to the same `init.cmd` file.

---

## 💡 Bonus: Add More Aliases

Just edit `init.cmd` and add lines like:

```cmd
doskey gs=git status
doskey gc=git commit -m $*
```

---

## 🛑 Disclaimer

Editing the Windows Registry can affect system behavior. Always back it up before making changes.

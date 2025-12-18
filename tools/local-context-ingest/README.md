# Gitingest Windows Context Menu Integration

Stop opening the terminal just to digest a codebase.

This tool integrates the powerful [gitingest](https://gitingest.com/) Python package directly into your Windows File Explorer. It allows you to right-click any folder (or background) and instantly generate a digest file in the background (Silent Mode).

## 🚀 The Problem
Tools like `gitingest` are essential for "Context Engineering"—preparing your code for LLMs. However, the standard workflow is repetitive:
1. Open Terminal.
2. Navigate to the directory (`cd ...`).
3. Run `gitingest .`.
4. Close Terminal.

This creates **Context Switching**, which kills developer flow.

## 🛠 The Solution
We provide a **Registry Script (.reg)** and a **Silent Runner (.vbs)** that adds a "Gitingest" option to your right-click menu.

- **Zero Friction:** One click to run.
- **Silent Mode:** No annoying command prompt windows popping up.
- **Visual Feedback:** Uses the "Analyze" icon for clarity.

## 📦 Installation

### Prerequisites
You must have Python installed and the `gitingest` package globally available:
```bash
pip install gitingest

```

### Step 1: Place the Scripts

Download (or clone) the contents of this folder. You need to keep `silent_runner.vbs` in a permanent location on your drive.
*Example location:* `C:\MADDE\tools\gitingest-context-menu\`

### Step 2: Configure the Registry File (⚠️ CRITICAL)

**You must edit the `.reg` file before running it, or it will NOT work.**

1. Right-click on `install_context_menu.reg` and select **Edit** (or Open with Notepad).
2. Look for the lines starting with `@="wscript.exe...`.
3. **Update the path** inside the quotes to match exactly where you saved `silent_runner.vbs` in Step 1.
*Make sure to use double backslashes (`\\`) for the path.*
**Example Change:**
*Current:* `"C:\\path\\to\\your\\silent_runner.vbs"`
*Change to:* `"C:\\MADDE\\tools\\gitingest-context-menu\\silent_runner.vbs"`
4. Save and close the file.

### Step 3: Activate

Double-click the modified `install_context_menu.reg` file and accept the Windows prompt.

## ⚡ Usage

1. Go to any project folder in Windows Explorer.
2. Right-click on the folder (or in the empty space inside the folder).
3. Select **Gitingest**.
4. A `digest.txt` file will appear in the directory shortly.

## 📂 File Structure

* `install_context_menu.reg`: The configuration file for Windows Registry.
* `silent_runner.vbs`: A wrapper script to run the command invisibly (no black screen).
* `remove_context_menu.reg`: Run this to uninstall the context menu item.

---

**Disclaimer:** This is a workflow wrapper. All credit for the actual digestion logic goes to the creators of the `gitingest` package.

```

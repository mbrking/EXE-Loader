# EXE-Loader
lightweight, configurable Windows launcher designed to start multiple executables in one click on Windows, SteamOS, SteamDeck

<img width="690" height="742" alt="image" src="https://github.com/user-attachments/assets/2df4cc2a-b63a-4e98-923e-90432649e2c8" />


# EXE Loader Guide

---

## 1. Non-Steam Games

1. Copy `EXEloader.exe` and `exefiles.cfg` into the game directory where the target game EXE resides.  
2. Open `exefiles.cfg` in Notepad and list each EXE you want to launch—one per line.  
3. Save and close the CFG file.  
4. In Steam (or your launcher), add a “Non-Steam Game” and point it at `EXEloader.exe`.  
5. Launch via the new entry—`EXEloader.exe` will start every EXE listed in `exefiles.cfg` in that same folder.

### Sample `exefiles.cfg`

---
---
---
## 2. Steam Games

1. Rename the original game EXE (e.g. `Shadow Labyrinth.exe`) to something like `Shadow Labyrinth original.exe`.  
2. Copy `EXEloader.exe` and `exefiles.cfg` into the same folder.  
3. Rename `EXEloader.exe` to the original game EXE name (`Shadow Labyrinth.exe`).  
4. Edit `exefiles.cfg` in Notepad—add each EXE filename (including the renamed original).  
5. Save and close the CFG file.  
6. Launch the game via Steam’s “Play” button. The loader (now named `Shadow Labyrinth.exe`) will fire off every EXE listed in `exefiles.cfg`.

### Sample `exefiles.cfg`

---
---
---

## How It Works

- **Loader EXE** (`EXEloader.exe`) is simply a batch-backed starter.  
- **Config file** (`exefiles.cfg`) lists everything you want to launch.  
- On launch, the loader reads each non-empty, non-comment line and executes `start "" <EXE>` in that folder.  
- Applying this trick under Steam—by renaming the loader to the original game EXE—lets you inject tools, trainers, overlays, etc., seamlessly.

Feel free to customize `exefiles.cfg` with relative paths (e.g. `Cheat Engine\CheatEngine.exe`) or full paths:

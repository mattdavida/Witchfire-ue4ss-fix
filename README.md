# Witchfire UE4SS Fix

**UE4SS compatibility fix for Witchfire**

## Installation

1. Install UE4SS in your Witchfire directory
2. Copy `ConsoleManager.lua` to your `UE4SS_Signatures` folder
3. Open `UE4SS-settings.ini` and set the following:
   ```ini
   [EngineVersionOverride]
   MajorVersion = 4
   MinorVersion = 27
   ```
4. Launch the game

That's it! UE4SS will now work with Witchfire.

## Files Included

* `ConsoleManager.lua` - The signature fix that makes everything work

## Tested On

* Witchfire (Latest Update - December 2025)
* UE4SS experimental release `zDEV-UE4SS_v3.0.1`
* Windows 10/11

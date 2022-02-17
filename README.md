# Backup scripts for Windows and OSX (.bat and .sh)

Even if Git is really cool to work without being afraid of losing your work on a mistake, we all know that prevention is better than cure.

If you want to double your saves on a cloud like Google drive or on you local machine, here are some scripts in .bat and .sh to be able to run backups of your dev projects easily on Windows or OSX.
As you can see, there are several files that you can use for different OS and Shells.

The steps explaned below are for a NPM set up, but you can use it too with yarn, node etc.

## First

Juste place these files on the root of you dev project folder.
All the files do a copy of all files, folder and sub-folders of the script place excluding your `node_modules` folder.
The new folder for your backup is automatically created with the name of the original folder project + the date and the hour of the copy, so you never will have name conflicts.

The drive letter for the destination paths in these files are set on "G" (or "g"), change it to fit with yours. 

## For Windows

### with Zsh (Windows Subsystem Linux)

- Use the `backupWIN.sh` file
- Change the path of your destination copy in the script file, paying attention to the variables for the new backup folder name
- Add a npm script line in your `package.json` :

`    "scripts": {
        "savewin": "zsh backupWIN.sh"
    },`
    
### with Cmd (Windows Shell)

- Use the `backupWIN.bat` file, and also put the `backup.ignore.txt` file in the same place
- Change the path of your destination copy in the script file, paying attention to the variables for the new backup folder name
- Add a npm script line in your `package.json` :

`    "scripts": {
        "savewin": "backupWIN.bat"
    },`
    
    
## For OSX

- Use the `backupOSX.sh` file
- Change the path of your destination copy in the script file, paying attention to the variables for the new backup folder name
- Add a npm script line in your `package.json` :

`    "scripts": {
        "saveosx": "backupOSX.sh"
    },`


## And that's all

You can now just run the `npm run savewin` or `npm run saveosx` when you want to create a backup of your project in your Google Drive or anywhere in your drives.

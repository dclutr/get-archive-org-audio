# get-archive-org-audio
This script creates html pages which can play music from archive.org.
It expects from user the archive.org album's detail page url or downloads page url and the preferred audio format from the user

# Dependencies
- curl

## Configuring via .bashrc
One can create a short alias in the .bashrc to run the script. 
The script saves html files to current directory, but one might want to choose a fixed directory to save html files to. 
The alias can be used to change directory as well in addition to running the script. 
For example
```bash
# .bashrc for Termux on Android 
Music="/storage/emulated/0/Download/Music"
if [ ! -d "$Music" ]
then mkdir "$Music"
fi
alias hm="cd $Music && bash ./get-archive-org-audio.sh"
```

## Running the script
The script has two mandatory arguments, a url and an audio format. For example
```bash
hm https://archive.org/details/sonic-r-ost flac
```
This will create an html file as shown in `example html.png`

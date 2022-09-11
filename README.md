# get-archive-org-audio
This script creates html pages which can play music from archive.org.
It expects from user the archive.org album's detail page url or downloads page url and the preferred audio format from the user

## Dependencies
- curl

## Running the script
Once configured, running the script requires two arguments, a url and an audio format. For example
```bash
alias hm="bash ~/get-archive-org-audio.sh`
hm https://archive.org/details/sonic-r-ost flac
```
This will create an html file, in the current directory, as shown in `example html.png`

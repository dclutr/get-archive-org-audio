# get-archive-org-audio
This script creates html pages with music embedded from archive.org.

## Dependencies
- curl

## Running the script
Running the script requires two arguments, a url and an audio format. For example
```bash
alias hm="bash ~/get-archive-org-audio.sh`
hm https://archive.org/details/sonic-r-ost flac
# or 
# hm https://archive.org/download/sonic-r-ost flac
```
This will create an html file, in the current directory, as shown in `example html.png`

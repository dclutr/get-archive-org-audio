get-archive-org-audio.sh
************************

This script creates html pages with audio tags that link to songs in
an archive.org collection

Dependencies
============

curl

Running
=======

Running the script requires two arguments, a url and an audio format.

Example
-------

alias hm="bash ~/get-archive-org-audio.sh
hm https://archive.org/details/sonic-r-ost flac

This will create a html file, in the current directory, as shown in
example html.png

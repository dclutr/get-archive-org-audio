#!/usr/bin/env bash

function a-to-b()
{
  html="${html//"$1"/"$2"}"
}

if [[ -z "$1" ]]
then
  echo "hm <url> <audio format>"
  echo "missing url"
  exit
fi

if [[ -z "$2" ]]
then
  echo "hm <url> <audio format>"
  echo "missing audio format"
  exit
fi

# https://archive.org/details/abc => https://archive.org/download/abc
url="${1/\/details\//\/download\/}"

html="$( curl $url | grep "\.$2\">" )"
# td a ==> label audio source hr
a-to-b "<td>"       "<label><audio controls>"
if [[ "$url" == *"/" ]]
then url="${1:0:-1}"
fi
a-to-b "<a href=\"" "<source type=\"audio/$2\" src=\"$url/"
a-to-b "\">"        "\"></audio><br/><br/>" 
a-to-b "</a>"       ""
a-to-b "</td>"      "</label><hr/>"

title="${url/*"/"}"

echo "
<style>
body {padding : 1em}
body {background : #ddddcc}
</style>
<title> $title </title>
$html" > "$title.html"

#!/bin/bash

# Written by Demetrio Ferro <ferrodemetrio@gmail.com> <https://twitter.com/DemetrioFerro>
# Distributed under license GPLv3+ GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY. YOU USE AT YOUR OWN RISK. THE AUTHOR
# WILL NOT BE LIABLE FOR DATA LOSS, DAMAGES, LOSS OF PROFITS OR ANY
# OTHER KIND OF LOSS WHILE USING OR MISUSING THIS SOFTWARE.
# See the GNU General Public License for more details.
# source : https://gist.github.com/red-noise/9789642
# adapted by http://www.erikdubois.be

first_artist=""



	new_artist=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata'|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "array"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$`
	if [ "$new_artist" != "$first_artist" ] 
	then
		first_artist="$new_artist"
		echo "$new_artist"
	fi
	


set phoneIP to "192.168.5.159"
set phonePort to 8080
set APIpath to "/ring/play_ringtone.xhtml"
set playCommand to "play=1"
set stopCommand to "stop=1"

with timeout of 3 seconds
	do shell script "/usr/bin/curl " & "--connect-timeout 3 http://" & phoneIP & ":" & phonePort & APIpath & " -d '" & playCommand & "'"
end timeout


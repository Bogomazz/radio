1. install liquidsoap
2. install icecast
3. configure icecast (http://icecast.org/docs/icecast-2.4.1/config-file.html)
  change sources limitation: 
  <limits>
        <sources>22</sources>
  
4. run icecast
5. change config.liq
6. run liquidsoap streaming.liq

for interaction with liquidsoap during streaming connect to server via telnet on 1234 port.
  help - for full list of commands
  mount_name.skip - skip Track on selected mount point
  playlist_name.reload - reload selected playlist
  queue_name.push <uri> - add next song

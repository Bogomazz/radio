%include "config.liq"

set("server.telnet",true)

frisky_request=request.queue(id="frisky_queue")
chill_request=request.queue(id="chill_queue")
deep_request=request.queue(id="deep_queue")

frisky_pls = playlist.safe(frisky_pls_path)
chill_pls = playlist.safe(chill_pls_path)
deep_pls = playlist.safe(deep_pls_path)

chill_out = output.icecast(%mp3,
                     host=host,
                     mount=chill_mount,
                     port=port,
                     password=password,
                     fallback([chill_request, chill_pls]))

deep_out = output.icecast(%mp3,
                      host=host,
                      mount=deep_mount,
                      port=port,
                      password=password,
                      fallback([deep_request, deep_pls]))

frisky_out = output.icecast(%mp3,
                   host=host,
                   mount=frisky_mp3_high_mount,
                   port=port,
                   password=password,
                   fallback([frisky_request, frisky_pls]))

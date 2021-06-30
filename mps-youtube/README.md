## mps-youtube
Project website: https://github.com/mps-youtube/mps-youtube <br/>
Project is based on *mps*, uses YouTube as a source of content and can play and download video as well as audio. <br/>
Initially I had a lot of problems, due to setting appropriate path (to check path run `echo $PATH`) to python and dependencies. Also important thing
was setting api_key. <br/>
After running `mpsyt` I had an error:
```
Traceback (most recent call last):
  File "/home/mozerpol/.local/lib/python3.7/site-packages/pafy/util.py", line 34, in call_gdata
    data = g.opener.open(url).read().decode('utf-8')
  File "/usr/lib/python3.7/urllib/request.py", line 531, in open
    response = meth(req, response)
  File "/usr/lib/python3.7/urllib/request.py", line 641, in http_response
    'http', request, response, code, msg, hdrs)
  File "/usr/lib/python3.7/urllib/request.py", line 569, in error
    return self._call_chain(*args)
  File "/usr/lib/python3.7/urllib/request.py", line 503, in _call_chain
    result = func(*args)
  File "/usr/lib/python3.7/urllib/request.py", line 649, in http_error_default
    raise HTTPError(req.full_url, code, msg, hdrs, fp)
urllib.error.HTTPError: HTTP Error 403: Forbidden
```

The solution was clear the cache (probably problem with api_key), just `rm -la ~/.config/mps-youtube/cache_py_3.7.3` and everything will be ok.

The most useful things (for me of course ;p): <br/>

**How to run:** <br/>
In terminal (after adding *mpsys* to path*): `mpsys`.

**How to search:** <br/>
After starting just: `/` and write what you are looking for. <br/>

**Play selected song** <br/>
After finding out your results, just write the number of your song e.g `10` and press *enter*. <br/>

**Play all of the search results:** <br/>
After finding out your results, just write `1-` and press *enter*. <br/>
The songs will change by themselves, one after the other.

**How to selected multiple songs and play them as playlist** <br/>
`1-6` - it will crate playlist from songs from number 1 to 6. <br>
`8-12` - it will crate playlist from songs from number 8 to 12.

**How to loop songs** <br/>
`song_number[loop]`, for example: <br/>
`1[3]` - repeat three times song number 1. <br/>
`4-6[2]` - repeat two times songs from number 4 to 6.

**How to find playlist:** <br/>
Just `//` and write what you are looking for. <br/>

**Show videos related to video** <br/>
`r <number from the song list>`, e.g. `r 2`.

**How to switch page** <br/>
In the first order find intresting song. </br>
Then just `p <page number>`, e.g. `p 2`, means page number two.

**How to remove selected songs from song list or playlist** <br/>
`rm <song number>`, e.g. `rm 4`, it'll remove song number 4.

**How to swap two items** <br/>
`sw <number>,<number>`, e.g. `sw 2,3`

**How to move item to position number...** <br/>
`mv <number>,<number>` - move item <number> to position <number>, e.g. <br/>
`mv 2,5`

**How to play video** <br/>
Remember about selecting video player for *mps*, I'm using *mpv* player. <br/>
After this we can turn on playing video with music: `set show_video true`, if we want to turn off, just write `set show_video false`.

**How to see history** <br/>
Just write `history`.


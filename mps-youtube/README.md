## mps-youtube
Project website: https://github.com/mps-youtube/mps-youtube

**Instal yewtube !!!** <br/>
https://github.com/mps-youtube/yewtube

||
|:--:|
|![image](https://user-images.githubusercontent.com/43972902/124945862-d73a0580-e00e-11eb-8f69-e61ec36c574a.png)|
|*The main window of my terminal after searching in the mps-youtube.*|

||
|:--:|
|![image](https://user-images.githubusercontent.com/43972902/124946893-ad351300-e00f-11eb-87fb-893de5728068.png)|
|*Playing song with video inside tmux (playing music videos is optional).*|

Important thing is setting api_key.

After running `mpsyt` I had an error:
```bash
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

The solution was clear the cache (probably problem with api_key):
`rm -la ~/.config/mps-youtube/cache_py_3.7.3`

The most useful things:

**How to run:** <br/>
In terminal (after adding *mpsys* to path*): `mpsys`.

**How to search:** <br/>
`/` and write what you are looking for.

**Play selected song:** <br/>
After finding out results, write the number of song e.g `10` and press *enter*.

**Play all of the search results:** <br/>
After finding out results, just write `1-` and press *enter*. <br/>
The songs will change by themselves, one after the other.

**How to selected multiple songs and play them as playlist:** <br/>
`1-6` - it will crate playlist from songs from number 1 to 6. <br>
`8-12` - it will crate playlist from songs from number 8 to 12.

**How to loop songs:** <br/>
`song_number[loop]`, for example: <br/>
`1[3]` - repeat three times song number 1. <br/>
`4-6[2]` - repeat two times songs from number 4 to 6.

**How to find playlist:** <br/>
Just `//` and write what you are looking for.

**Show videos related to video:** <br/>
`r <number from the song list>`, e.g. `r 2`.

**How to switch page:** <br/>
Firstly find intresting song. </br>
Then just `p <page number>`, e.g. `p 2`, means page number two.

**How to remove selected songs from song list or playlist:** <br/>
`rm <song number>`, e.g. `rm 4`, it'll remove song number 4.

**How to swap two items:** <br/>
`sw <number>,<number>`, e.g. `sw 2,3`

**How to move item to position number...** <br/>
`mv <number>,<number>` - move item <number> to position <number>, e.g. <br/>
`mv 2,5`

**How to play video:** <br/>
Firstly select video player for *mps*, I'm using *mpv* player. <br/>
Then turn on playing video with music: `set show_video true`, to turn off
`set show_video false`.

**How to see history:** <br/>
Write `history`.

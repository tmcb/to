# to - a plain dumb wrapper to dtach

## usage
```
 to -n <label> [<program>]  # new session
 to <label>                 # existing session
 to -l                      # list sessions
```

## motivation
In a local terminal session, I usually switch between applications using `fg`
and `jobs`. This workflow breaks down too often in remote terminal sessions, for
obvious reasons.

`to` brings together the convenience of a terminal multiplexer with the ease of
use of job control utilities.

## noncomprehensive list of dependencies
- `sh`
- `find`
- `dtach`

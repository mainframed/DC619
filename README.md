# DC619 Training LPAR

![DEFCON MAINFRAME](/screenshot.png?raw=true "DC619")

## Use docker

You can use docker instead of building from scratch: https://hub.docker.com/r/mainframed767/mvsce_dc619

## Building from scratch

- Download the most recent version of MVSCE from https://github.com/MVS-sysgen/sysgen/releases
- Launch MVSCE
- Install Review Front end: 
    - Logon to MVSCE
    - At the TSO ready prompt: `RX MVP INSTALL REVIEW`
- Submit the job `logon_screen.JCL`: `cat logon_screen.JCL|ncat --send-only -w1 127.0.0.1 3505`
- Submit the job `motd.jcl`: `cat motd.jcl|ncat --send-only -w1 127.0.0.1 3505`
- Submit the job `terminal.jcl`: `cat terminal.jcl|ncat --send-only -w1 127.0.0.1 3505`
- Submit the job `make_staging.jcl`: `cat make_staging.jcl|ncat --send-only -w1 127.0.0.1 3505`
- Using `RFE` in TSO edit `SYS1.VTAMLST(ATCCON00)` and replace `LCL400` with `DC619T`
- Edit `SYS1.PARMLIB` members:
    - `IEASYS00` and change `MAXUSERS` to `32`
    - `IKJTSO00` and change `USERMAX` to `32`
- Install `https://github.com/mvslovers/rdrprep` on your Linux box
- Clone `https://github.com/mvslovers/jcc` to this folder
- Compile `hello.c`:
    - `./jcc/jcc -I./jcc/include -o hello.c`
    - `./jcc/prelink -s ./jcc/objs hello.load hello.obj`
- Copy `hello.load` to users: `cp hello.load users`
- Run usersjcl.py: `python3 usersjcl.py`
- Convert each job in the users folder with `rdrprep` and submit them one by one:
    - `for i in *.jcl; do echo $i;rdrprep $i;cat reader.jcl|ncat --send-only -w1 172.17.0.3 3506; read; done`
    - You can check the output of MVSCE `printers/prt00e.txt` to see each job completed
- Shutdown MVS/CE
- Re-IPL MVS/CE and enjoy your lab environment

## Files

- `hello.c` vulnerable C program from https://github.com/jake-mainframe/GETSPLOIT
- EBCDIC files `LGBT400`, `LOC400` and `WTO400`
- `Dockerfile` used to build docker image from the contents for `./dasd`: `https://github.com/jake-mainframe/GETSPLOIT`
- `logon_screen.ans`/`logon_screen.JCL`: ANSI/JCL to replace the NETSOL logon screen
- `motd.jcl` replaces the TSO logon clist
- `terminal.jcl` adds 32 new terminal interfaces and updates VTAM config
- `usersjcl.py` creates `DC00.jcl` through `DC29.jcl` in the `./users` folder

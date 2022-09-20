## Documento sobre  assciicinenam
https://asciinema.org/docs/usage
#### instalación
Debian
sudo apt-get install asciinema

rec [filename]
Record terminal session.

By running asciinema rec [filename] you start a new recording session. The command (process) that is recorded can be specified with -c option (see below), and defaults to $SHELL which is what you want in most cases.

Recording finishes when you exit the shell (hit Ctrl+D or type exit). If the recorded process is not a shell then recording finishes when the process exits.




play <filename>
Replay recorded asciicast in a terminal.

This command replays given asciicast (as recorded by rec command) directly in your terminal.

Following keyboard shortcuts are available:

Space - toggle pause,
. - step through a recording a frame at a time (when paused),
Ctrl+C - exit.



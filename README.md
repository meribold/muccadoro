Implementation of the [Pomodoro Technique][wikipedia] using [`figlet(6)`][],
[`cowsay(1)`][], and optionally [`lolcat`][].

<span>
<img src="/../media/screenshot.png?raw=true" alt="_____________________
/  ___ _ _ _ _ _ ____ \
| |_  ) | (_) | |__ / |
|  / /|_  _||_  _|_ \ |
| /___| |_(_) |_|___/ |
\                     /
---------------------
       \   ^__^
        \  (-o)\_______
           (__)\       )\/\
               ||----w |
               ||     ||" />
</span>

[wikipedia]: https://en.wikipedia.org/wiki/Pomodoro_Technique
[`figlet(6)`]: http://www.figlet.org/figlet-man.html
[`cowsay(1)`]: https://linux.die.net/man/1/cowsay
[`lolcat`]: https://github.com/busyloop/lolcat

## Features
*   Sends desktop notifications.
*   Can't stop.  [TSTP][] (<kbd>Ctrl</kbd>-<kbd>Z</kbd>) is trapped.  Pomodoros are
    uninterruptible.
*   Traps [INT][] to make <kbd>Ctrl</kbd>-<kbd>C</kbd> abandon pomodoros.
*   Silly mode (or is it stern?) is enabled with `-s` (can be specified multiple
    times).
*   Avoids using `clear` so the terminal doesn't flash.
*   Hides the cursor.
*   Disables echoing of stdin.
*   Keeps the cow at the bottom of your terminal.
*   Prints some stats when exiting: when pomodoros started and ended and the length of
    breaks (can be redirected to a file).
*   Seconds are very slightly longer than customary (subject to the speed of your
    computer; maybe adds 10 seconds to a 25 minute pomodoro).

[TSTP]: https://www.gnu.org/software/libc/manual/html_node/Job-Control-Signals
[INT]: https://www.gnu.org/software/libc/manual/html_node/Termination-Signals

## Installation

TODO?

<!-- vim: set tw=90 sts=-1 sw=4 et spell: -->

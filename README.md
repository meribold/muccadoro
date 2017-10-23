Implementation of the [Pomodoro Technique][wikipedia] using [`figlet(6)`][],
[`cowsay(1)`][], and optionally [`lolcat`][].

![Screenshot of muccadoro](/../media/screenshot.png?raw=true "MOO!")

[wikipedia]: https://en.wikipedia.org/wiki/Pomodoro_Technique
[`figlet(6)`]: http://www.figlet.org/figlet-man.html
[`cowsay(1)`]: https://linux.die.net/man/1/cowsay
[`lolcat`]: https://github.com/busyloop/lolcat

## Features
*   Sends desktop notifications.
*   Can't stop.  [TSTP][] (<kbd>Ctrl</kbd>-<kbd>Z</kbd>) is trapped.  Pomodoros are
    uninterruptible.
*   Traps [INT][] to make <kbd>Ctrl</kbd>-<kbd>C</kbd> abandon pomodoros.
*   Silly mode (or is it stern?) is enabled with `-s` (can be specified multiple times).
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

Put `muccadoro` inside some directory in your `PATH`, e.g. `~/bin/` (or `~/.local/bin/`):

```bash
curl -fLo ~/bin/muccadoro https://raw.githubusercontent.com/meribold/muccadoro/master/muccadoro
```

<!-- vim: set tw=90 sts=-1 sw=4 et spell: -->

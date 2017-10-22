<!-- ![TODO](/../media/screenshot.png?raw=true "TODO") -->

Implementation of the [Pomodoro Technique][wikipedia] using [`figlet(6)`][],
[`cowsay(1)`][], and optionally [`lolcat`][].

[wikipedia]: https://en.wikipedia.org/wiki/Pomodoro_Technique
[`figlet(6)`]: http://www.figlet.org/figlet-man.html
[`cowsay(1)`]: TODO
[`lolcat`]: https://github.com/busyloop/lolcat

## Features
*   Sends desktop notifications.
*   Can't stop.  [TSTP][] (<kbd>Ctrl</kbd>-<kbd>Z</kbd>) is trapped.  Pomodoros are
    uninterruptible.
*   Traps [INT][] to make Ctrl-C abandon pomodoros.
*   Silly mode (or is it stern?) can be enabled with `-s` (can be specified multiple
    times).
*   Doesn't use `clear`, preventing the terminal from flashing.
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

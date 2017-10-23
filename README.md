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
    breaks ([can be redirected to a file](#usage-notes)).
*   Seconds are very slightly longer than customary (subject to the speed of your
    computer; maybe adds 10 seconds to a 25 minute pomodoro).

[TSTP]: https://www.gnu.org/software/libc/manual/html_node/Job-Control-Signals
[INT]: https://www.gnu.org/software/libc/manual/html_node/Termination-Signals

## Installation

Put `muccadoro` inside some directory in your `PATH`, e.g. `~/bin/` (or `~/.local/bin/`):

```bash
curl -fLo ~/bin/muccadoro https://raw.githubusercontent.com/meribold/muccadoro/master/muccadoro
```

I recommend creating an alias such as

```bash
alias pomo='muccadoro | tee -ai ~/pomodoros.txt'
```

See "[Usage notes](#usage-notes)" for details.

## Usage notes

You may want to keep a record of how many pomodoros you did and when (and for how long)
you took breaks.  This is supported by simply redirecting stdout:

```bash
muccadoro >> ~/pomodoros.txt
```

If you want to save the summary but also have it printed to stdout, use:

```bash
muccadoro | tee -ai ~/pomodoros.txt
```

The `-i` flag (`--ignore-interrupts`) makes sure the summary is correctly processed by
`tee` in case the pipeline was killed with <kbd>Ctrl</kbd>-<kbd>C</kbd>.

## TODO
*   Provide a clean way to quit (maybe by pressing <kbd>q</kbd>, like in `less(1)`).
    Using <kbd>Ctrl</kbd>-<kbd>C</kbd> breaks the summary when using redirection like
    `muccadoro | tee -a ~/pomodoros.txt`.
*   There's an extra newline when I <kbd>Ctrl</kbd>-<kbd>C</kbd> (but not otherwise)
    compared to `watch(1)`.
*   Maybe log the date, at least when redirected to a file (can we find out?).
*   Redraw when the terminal size changes?
*   Bundle slightly modified cowfiles to make the cow move around a little (for example
    its legs or tail).
<!-- *   Make the terminal sticky (i3) when its high time to start the next pomodoro. -->
<!-- *   Desktop entry file. -->
<!-- *   Recommend using a faster lolcat (https://github.com/jaseg/lolcat)? -->

<!-- vim: set tw=90 sts=-1 sw=4 et spell: -->

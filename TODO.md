*   Provide a clean way to quit (maybe by pressing <kbd>q</kbd>, like in `less(1)`).
    Using <kbd>Ctrl</kbd>-<kbd>C</kbd> breaks the summary when using a redirection like
    `muccadoro | tee -a ~/pomodoros.txt`.
*   There's an extra newline when I <kbd>Ctrl</kbd>-<kbd>C</kbd> (but not otherwise)
    compared to `watch(1)`.
*   Maybe log the date, at least when redirected to a file (can we find out?).
*   Redraw when the terminal size changes?
*   Bundle slightly modified cowfiles to make the cow move around a little (for example
    its legs or tail).
*   Support specifying how many pomodoros one set should contain.
*   Support writing summaries as Markdown or HTML?
*   Check if all required commands are available; exit and print an informative error
    message if not.
*   Allow specifying how many pomodoros one set should comprise?
*   Consider if the amount of processes that are constantly started can be reduced.  See
    <https://unix.stackexchange.com/q/169716>.
<!-- *   Make the terminal sticky (i3) when its high time to start the next pomodoro. -->
<!-- *   Desktop entry file. -->
<!-- *   Recommend using a faster lolcat (https://github.com/jaseg/lolcat)? -->

<!-- vim: set tw=90 sts=-1 sw=4 et spell: -->

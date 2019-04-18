# Pandoc LaTeX Example

```
watchexec -d md -- make hw2.pdf
```
Where `watchexec` from https://github.com/watchexec/watchexec reruns make whenever a file with extension md changes.

Check `Makefile` for the commands used to tell pandoc how to compile. If you don't need bib references then something like `pandoc -o hw1.pdf hw1.md` works fine too.

# Prompt modification

If you want a simple, elegant prompt format, you should try this script.

# Usage

1. To modify an user's prompt, run:
```
./ps1-gen.sh
```
2. Choose format and colors; follow cli output instructions
3. Restart terminal to see changes

Use `sudo` if you need to modify root's prompt:
```
sudo ./ps1-gen.sh
```

# TODO

* Screenshots
* Ways to accomplish this without user interaction
* Modify `gnome-terminal` title. Add this to `.bashrc`:
```
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
```

# Alternatives

You can always visit the following URL to modify your prompt:
```
http://bashrcgenerator.com/
```
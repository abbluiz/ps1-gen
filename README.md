# Prompt style modification 💅

If you want a simple, elegant prompt format, you should try this script. It will generate a customized PS1 environment variable and put it inside your `~/.bashrc` file. 

As an advanced alternative to using this script, you can visit the following URL:
```
http://bashrcgenerator.com/
```

## Usage

0. Clone this repository and navigate to its folder using your favorite terminal emulator.
1. To modify an user's prompt, run:
```
./ps1-gen.sh
```
2. Choose format and colors; follow provided instructions.
3. Restart terminal to see changes.
4. Use `sudo` to modify root's prompt (optional):
```
sudo ./ps1-gen.sh
```

## Roadmap

* Add screenshots to this `README.md` file.
* Implement non-interactive mode.
* Implement uninstaller (remove PS1 from `~/.bashrc`).
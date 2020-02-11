# Prompt style modification 💅

If you want a simple, elegant prompt format, you should try this script. It will generate a customized PS1 environment variable and put it inside your `~/.bashrc` file. 

As an advanced alternative to using this script, you can visit the following URL:
```
http://bashrcgenerator.com/
```

## Usage

1. Clone this repository and navigate to its folder using your favorite bash shell emulator:
```
git clone https://github.com/abbluiz/ps1-gen.git && cd ps1-gen
```
2. To modify an user's prompt, run:
```
./ps1-gen.sh
```
3. Choose format and colors; follow provided instructions.
4. Restart terminal to see changes.
5. Use `sudo` to modify root's prompt (optional):
```
sudo ./ps1-gen.sh
```

## Roadmap

* Add screenshots to this `README.md` file.
* Implement non-interactive mode.
* Implement advanced color options.
* Implement `~/.bashrc` cleaner.
* Implement installer/uninstaller/updater.
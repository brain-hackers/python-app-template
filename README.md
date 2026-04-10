# Python App Template

_*Minimal Hello World template of a SHARP Brain app written in Python*_


# Get started

The files to be edited by developers are the following:

- `app`: the application's executable module
  - The example code shows "Hello World" with tkinter
- `config.ini`: a config file for [PyAppLauncher](https://github.com/brain-hackers/PyAppLauncher) that discovers a CPython env in the system
  - No need to edit it in most of the cases


# Pack and deploy the app

Run `pack.sh` to pack everything necessary into a `Hello World` directory. Copy the generated `Hello World` directory into the `アプリ` directory at the root directory of an SD card to run the app from the launcher.

The final directory tree of an SD card will look like this:

```
./
└── アプリ/
    └── PyAppLauncher/
        ├── app/
        │   └── __main__.py*
        ├── AppMain_.exe*
        ├── AppMain.exe*
        ├── config.ini*
        ├── index.din*
        └── python/
```

For a reference, the "hello_world.zip" in GitHub Release page is useful to check if your build is correct, and if the minimal app works on your e-dictionary.


# License

[The Unlicense](/LICENSE)

Everthing in this template repository is considered Public Domain. You can alter the license agreement entirely and use any license you prefer.

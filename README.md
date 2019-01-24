# Quick and easy Debian packaging for Python Modules

First

```
sudo apt -y install cookiecutter
cookiecutter https://github.com/openstack-charmers/pydeb-cookiecutter
```

Answer the questions; this will generate a basic Python package.

Then:

 - Review the Build-Depends-Indep in d/control - your package will
   probably need more that 'mock' - remember to add python and python3
   versions of each one.

 - Review the d/copyright file - copyright will need documenting for
   upload to Ubuntu in the longer term so needs to be completed based
   on the information in the source files for the module.

[![asciicast](https://asciinema.org/a/NdaokXoy2C9WsPsXiIia9qcgP.svg)](https://asciinema.org/a/NdaokXoy2C9WsPsXiIia9qcgP)

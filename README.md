#Love2D Examples
A collection of Love2D games for learning purposes

---

##Installing Love2D
###Windows
- Download the latest version of [Love2D](http://love2d.org), and install to your desktop.
 
###Ubuntu
- Use the software center to install Love. (Note: this will only work
  for Ubuntu releases before 14.04 or Trusty Tahr)

### Ubuntu 14.04 LTS
Currently there are no package for Trusty in the PPA, and if we install via the software center, we will get the 0.8.0 version, not the current 0.9.0 version.

1. We need to download the source using Mercurial `hg https://bitbucket.org/rude/love`
- We need to install several packages like `libtool` and `autotools`
- Run `platform/unix/automagic` from the root folder, run `./configure` and `make`
- The final love executable can be found in the `/src` folder.
- Create an alias in your `~/.bashrc` file, add this line in the end of
   the file (change the path accordingly) 
    `alias love='/home/username/love/src/love'`

##To Do:

- Running love via command line, Notepad++
- Hello world
- Pong

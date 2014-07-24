#Love2D Examples
A collection of Love2D games for learning purposes

---

##Installing Love2D
###Windows

###Ubuntu
- Use the software center to install Love. (Note: this will only work
  for Ubuntu releases before 14.04 or Trusty Tahr)

### Ubuntu 14.04 LTS
Curretly there are no package for Trusty in the PPA, and if we install via the software center, we will get the 0.8.0 version, not the current 0.9.0 version.
1. We need to download the source using Mercurial `hg https://bitbucket.org/rude/love`
2. We need to install several packages like `libtool' and 'autotools'
3. Run `platform/unix/automagic` from the root folder, run `./configure` and `make`
4. The final love executable can be found in the `/src` folder.
5. Create an alias in your `~/.bashrc` file, add this line in the end of
   the file (change the path accordingly) 
    `alias
love='/home/username/love/src/love'`

ToDo:
- How to install Love (Windows)
- Hello world
- Running love via command line, Notepad++
- Pong

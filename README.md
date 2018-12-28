OpenGPGMail
=======

OpenGPGMail is a plugin for OS X's Mail.app, which let's you  
send and receive secure, OpenPGP encrypted and signed messages.

OpenGPGMail is a fork of [GPGMail](https://github.com/GPGTools/GPGMail) from GPGTools. I decided to embark on this project when a relatively quiet update to the software introduced a banner in Mail mandating that purchase a support plan, or else. 

I feel the viability of PGP in general depends on widespead adoption, and introducing a barrier to otherwise intuitive software works counter to that idea.

The remaining components of the GPGTools software suite remain truly free, for now. I'd recommend installing those tools directly from their [official website](https://gpgtools.org/).

Localizations are done on [Transifex](https://www.transifex.com/projects/p/GPGMail/).

Prerequisite
------------

In order to use OpenGPGMail you need to have GnuPG installed.
You can either 

  - build your own version 
  - use one from [homebrew](http://brew.sh) 
  - find a packaged version for OS X at [gpgtools.org](https://gpgtools.org)
  - Libmacgpg (https://github.com/GPGTools/Libmacgpg.git)
To build this software, you need to have the full version of Xcode installed.

Build
-----

#### Clone and make

```bash
git clone https://github.com/jbharter/OpenGPGMail.git
cd OpenGPGMail
make
```

#### Install
Copy GPGMail.mailbundle to the user library mail bundles

```bash
killall Mail
rm -rf ~/Library/Mail/Bundles/GPGMail.mailbundle
cp build/Release/GPGMail.mailbundle ~/Library/Mail/Bundles/GPGMail.mailbundle
```


System Requirements
-------------------

* Mac OS X >= 10.9 (macOS Sierra is not yet supported!)
* Libmacgpg
* GnuPG

# Git - Spanish translation team

## Description

Spanish translation team for localization of Git project resources.

### Main branches

- **`transifex`**: Only intended to help translators and track current translation state. It **must not** be based for PR to the main i10n team.

- **`master`**: Git source code synchronized with the **master** branch of [git-l10n/git-po](https://github.com/git-l10n/git-po).

## Contributing

### Requirements

In addition to git compilation requirements, in order to translate you will need:

- Join to the [Transifex project](https://transifex.com/projects/p/git-po) directly or [create a new issue asking to join](https://github.com/nelson6e65/git-po/issues/new?title=I%20would%20like%20to%20join%20to%20the%20translation%20team).
- Install the [Transifex Client](https://docs.transifex.com/client/installing-the-client) and [set your credentials](https://docs.transifex.com/client/client-configuration#-transifexrc).

### Translating

You just need to use the Web interface use the intuitive Transifex platform in order to make your improvements.

> **Note:** You can also manually update the .po files by :one: downloading the `"for_translation_*.po"` file from Transifex, :two: imprive it and :three: uploading this file again. **This is not recomended** because you can override by mistake other translator work.

### Cheat Sheet

**Update local `po/es.po` file from Transifex:**

```
$ tx pull -l es
```

**Set the charset and replace default values:**

```bash
# Sets the CHARSET to UTF-8:
perl -pi -e 's/(?<="Content-Type: text\/plain; charset\=)CHARSET/UTF-8/' po/es.po

# Sets PACKAGE VERSION to "Git"
perl -pi -e 's/(?<="Project-Id-Version: )PACKAGE VERSION/Git/' po/es.po
```

> **Note:** Charset is mandatory to be set before to run `make`.


**Test:**

```bash
$ make
$ make install
$ ~/bin/git status
```

**Clean build:**

```bash
$ git clean -Xfd --exclude .transifexrc
```


> Note: If you need further info about transifex client, check [here]( https://docs.transifex.com/client/introduction).


----

Git - fast, scalable, distributed revision control system
=========================================================

Git is a fast, scalable, distributed revision control system with an
unusually rich command set that provides both high-level operations
and full access to internals.

Git is an Open Source project covered by the GNU General Public
License version 2 (some parts of it are under different licenses,
compatible with the GPLv2). It was originally written by Linus
Torvalds with help of a group of hackers around the net.

Please read the file [INSTALL][] for installation instructions.

Many Git online resources are accessible from <https://git-scm.com/>
including full documentation and Git related tools.

See [Documentation/gittutorial.txt][] to get started, then see
[Documentation/giteveryday.txt][] for a useful minimum set of commands, and
Documentation/git-<commandname>.txt for documentation of each command.
If git has been correctly installed, then the tutorial can also be
read with `man gittutorial` or `git help tutorial`, and the
documentation of each command with `man git-<commandname>` or `git help
<commandname>`.

CVS users may also want to read [Documentation/gitcvs-migration.txt][]
(`man gitcvs-migration` or `git help cvs-migration` if git is
installed).

The user discussion and development of Git take place on the Git
mailing list -- everyone is welcome to post bug reports, feature
requests, comments and patches to git@vger.kernel.org (read
[Documentation/SubmittingPatches][] for instructions on patch submission).
To subscribe to the list, send an email with just "subscribe git" in
the body to majordomo@vger.kernel.org. The mailing list archives are
available at <https://public-inbox.org/git/>,
<http://marc.info/?l=git> and other archival sites.

The maintainer frequently sends the "What's cooking" reports that
list the current status of various development topics to the mailing
list.  The discussion following them give a good reference for
project status, development direction and remaining tasks.

The name "git" was given by Linus Torvalds when he wrote the very
first version. He described the tool as "the stupid content tracker"
and the name as (depending on your mood):

 - random three-letter combination that is pronounceable, and not
   actually used by any common UNIX command.  The fact that it is a
   mispronunciation of "get" may or may not be relevant.
 - stupid. contemptible and despicable. simple. Take your pick from the
   dictionary of slang.
 - "global information tracker": you're in a good mood, and it actually
   works for you. Angels sing, and a light suddenly fills the room.
 - "goddamn idiotic truckload of sh*t": when it breaks

[INSTALL]: INSTALL
[Documentation/gittutorial.txt]: Documentation/gittutorial.txt
[Documentation/giteveryday.txt]: Documentation/giteveryday.txt
[Documentation/gitcvs-migration.txt]: Documentation/gitcvs-migration.txt
[Documentation/SubmittingPatches]: Documentation/SubmittingPatches

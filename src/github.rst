
.. _githubb:

GitHub Integration
==================

If you use only the ready-made card scripts and make only minor modifications, you don't need to worry about Git(Hub) - Bitdeli works perfectly fine without them. Otherwise, you should read on.

We at Bitdeli love `Git <http://git-scm.com>`_ and `GitHub <https://github.com>`_. Bitdeli and Git is a match made in heaven: You can *collaborate*, *share* and *experiment* with analytics using the most powerful and popular distributed version control system, Git. Anyone in your team can immediately see and test a new version of analytics with live production data, thanks to Bitdeli. Moreover, your analytics becomes fully *auditable*, as any metrics can be traced back to their source.

By using both Bitdeli and GitHub, you can become an analytics demigod without having to access any servers or installing anything locally. Just edit and test your analytics at Bitdeli and commit your changes to GitHub directly from :ref:`editor` for reviewing and collaboration - perfect for iPad!

Get Started
-----------

1. First, `verify your GitHub account with Bitdeli </settings/github>`_ at your settings page. This is required as we need to know where to find your repositories. Note that Bitdeli doesn't require access to any of your private information in GitHub.

2. Go to the GitHub repository for the `Bitdeli Gallery <https://github.com/bitdeli/bd-toydata-widget-gallery>`_. Click *Fork*.

3. Click *Add Card* at your `Bitdeli home page </home>`_. The forked Bitdeli Gallery should appear at the top of the list, below the title "Your GitHub Repositories".

4. Click *Add*. Once the card has been created, click *Edit*, make some changes to the card.

5. When you are ready with changes, click *Commit*. Instead of saving the changes locally, this will make a commit to your forked GitHub repository.

When committing to a new repository for the first time, the editor asks you to add a GitHub user `bitdeli-commits <https://github.com/bitdeli-commits>`_ as a collaborator to the repository in question, so the editor can start pushing commits to GitHub. You can find more information about adding a collaborator on `this GitHub help page <https://help.github.com/articles/how-do-i-add-a-collaborator>`_.

Once you have added **bitdeli-commits** to the list of collaborators, click *commit* again. After writing a commit message, you should see the commit appearing in the repository's GitHub page!

Now the card is fully connected to the GitHub repository. Every time the card is updated, the latest code is pulled from GitHub. Thus, you can make changes to the repository with your local editor, accept pull requests or perform any other Git tricks as usual, and see the changes reflected on the card automatically.

Repository Structure
--------------------

The Git integration is based on a few simple conventions. If you want to use a GitHub repository with Bitdeli, the repository needs to follow these conventions.

Note that `all card scripts provided by Bitdeli <https://github.com/bitdeli>`_ follow these conventions and thus serve as great examples or starting points for your own repositories.

Name & Description
''''''''''''''''''''

The repository name must be prefixed with `bd-`. By convention, the next token denotes the data source, such as `mixpanel`. The tokens after this are used as the title for the card. Dashes are replaced with spaces.

The description, as shown on the add dialog, is obtained directly from the description of the repository at GitHub. You can edit them easily on the repository's page on GitHub. Keep it short and descriptive.

__main__.py
'''''''''''

The card script, as shown in the :ref:`editor`, is read from `__main__.py` that must exist on the top level of the repository.

This follows from the `Python convention for executable directories <http://docs.python.org/2/using/cmdline.html>`_.

bitdeli/config.json
'''''''''''''''''''

The repository must contain a configuration file at `bitdeli/config.json`. The file contains a single
JSON object with the following fields:

- `section` that describes the :ref:`section <sections>` where this card belongs to. The valid values are `what` (news), `why` (insights) and `how` (goals).
- `profile` that links the script to a valid :ref:`profile-script`. For possible values, see :ref:`data-sources`.

bitdeli/preview.png
'''''''''''''''''''

A preview image at `bitdeli/preview.png` is optional. If it exists, it is shown on the *Add Card* dialog. The aspect ratio should be 16:9.

Other files
'''''''''''

The repository is treated as an `executable directory for Python <http://docs.python.org/2/using/cmdline.html>`_. Hence it is possible to include other modules and packages in the directory.

Currently the code is executed with Python 2.7. Only modules written in pure Python are supported at this point.

Git Workflows
-------------

The Git integration is designed with the following two use cases in mind: Simple and Advanced. You are free to (ab)use the integration in any other way as well but these should serve as good guidelines:

Simple: Use Card Editor as the Primary Editor
'''''''''''''''''''''''''''''''''''''''''''''

In this workflow, you should edit the card script primarily with the in-browser :ref:`editor`. When you want to make changes to a card, open the editor, make changes, click *commit* when you are done.

If you or someone else makes changes to the repository outside the card editor, you need to discard any changes in the editor before you can refresh the code.

Pros:

- Easy to test code with live data before committing.
- As long as you are the sole committer, it is guaranteed to be conflict-free.
- Benefit from issue tracking, sharing etc. in GitHub.

Cons:

- Merging not supported in :ref:`editor`. You need to discard local changes before pulling the latest version.
- Only `__main__.py` can be edited.

Advanced: Use a Local Editor as the Primary Editor
''''''''''''''''''''''''''''''''''''''''''''''''''

In this workflow, you can treat the card repository as any other Git repository locally. Use your favorite editor and Git client on your computer.

When you want to test the latest version with live data, click **refresh** in :ref:`editor` which pulls the latest `__main__.py` from GitHub. This works only if you haven't changed the code locally in Card Editor - otherwise you need to click **reset** first to discard your local changes.

Note that it is still quite convenient to use :ref:`editor` for debugging and minor modifications - just make sure to refresh the code before starting to make any changes in the card editor, to avoid any merge
conflicts.

Pros:

- Use your favorite toolchain locally.
- All Git operations can be used before pushing: merging, rebasing etc.
- Can add and edit new modules and packages in the repository, not just `__main__.py`.
- Benefit from issue tracking, sharing etc. in GitHub.

Cons:

- Testing code with live data in :ref:`editor` requires either copy-pasting or committing from the local editor.
- Requires a local editor, Git client etc.
- Requires more expertise with Git.


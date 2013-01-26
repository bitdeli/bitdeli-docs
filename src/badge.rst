
.. _badge:

Bitdeli Badge for GitHub
========================

.. image:: images/trending_badge3.png
   :align: center

You can get started with Bitdeli for free by adding the Bitdeli badge to the readme file of at least one of your GitHub repositories. For instance, you can see `the badge live in this repository <https://github.com/bitdeli/bitdeli-docs>`_.

Every time someone views the repository the badge is loaded from the lightning fast Amazon Content Distribution Network, which produces an event in the access log. This benefits you in two ways: First, the badge itself shows when the repository starts growing more popular, as described in the next section. Second, you can analyze the events by yourself in Bitdeli.

You can access the raw events by creating a free Bitdeli account at https://bitdeli.com/free after you have added the badge. Alternatively, you can connect a *GitHub Badge* data source in `your account settings <https://bitdeli.com/settings/data>`_. It may take up to an hour for the events to appear after you have added a badge for the first time.

We add a card showing basic stats about your visitors after you have signed up (see `its source code here <https://github.com/bitdeli/bd-ghbadge-visitors>`_). Once the data starts flowing in, you can see the requests under the *Profiles* tab in the :ref:`editor`. For a detailed description of the data format, see :ref:`data-sources`. Note that the data source includes data from all badges under your GitHub account, so you can easily compare performance of different repositories.

Set your imagination free and start hacking your own GitHub analytics! Once you are done, be sure to share the results on GitHub using our :ref:`githubb`.

Trending algorithm
------------------

The badge shows between zero to three bars that indicate the relative popularity of the repository, measured in weekly unique visitors.

The trending algorithm combines a baseline number of visitors with a sliding week-to-week growth to determine the number of bars. See the source code of `this Bitdeli card <https://github.com/tuulos/bd-ghbadge-trending>`_ for the exact algorithm.


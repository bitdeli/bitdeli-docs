
.. _data-sources:

Data Sources
============

You can either send events directly to Bitdeli using the :ref:`events-api` or Bitdeli
can pull data automatically from a growing number of 3rd party services. You can activate
the data sources at `your account settings </settings/data>`_.

Each data source comes with a :ref:`profile-script` that preprocesses data for
:ref:`profiles`. What exactly is done during preprocessing depends on the data source
and your current `Bitdeli plan </settings/billing>`_ that affects how much historical data is kept in profiles.

The currently available data sources are documented below.

.. include:: ../repos/profile-events-raw/README.rst
.. include:: ../repos/profile-mixpanel-hourly/README.rst
.. include:: ../repos/profile-github-commits/README.rst
.. include:: ../repos/profile-toy-data/README.rst

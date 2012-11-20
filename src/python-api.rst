
.. _python-api:

Python API
==========

.. toctree::
   :hidden:
   :glob:

   python-*

The Bitdeli Python API provides access to inputs (:ref:`profiles`) and outputs (:mod:`bitdeli.widgets`) for the :ref:`card-script`. The source code for the API is available `on GitHub at bitdeli/bitdeli-py <https://github.com/bitdeli/bitdeli-py>`_.

.. _python-flavors:

Input
-----

The input API comes in two flavors: *classic* and *chained*.

- The *classic* flavor is provided by the :mod:`bitdeli` module. It is best suited for building simple dashboards.

- The *chained* flavor is provided by the :mod:`bitdeli.chain` module. It makes building complex dashboards more efficient and convenient.

.. _python-output:

Output
------

A :ref:`card-script` outputs a dashboard, composed of *widgets*, and a textual summary of the results.

- Widgets are documented in :mod:`bitdeli.widgets`.
- Some utility functions for producing textual summaries can be found in :mod:`bitdeli.textutil`.


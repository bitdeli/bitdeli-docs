
.. _events-api:

Events API
==========

You can send input events directly to Bitdeli by using our Events API.

The Events API provides the lowest latency for data processing: Cards backed by the Events API
are updated every hour. You also have the full freedom to specify the contents of events.

You can enable the Events API at `your account settings </settings/data>`_.

Send an Event to Bitdeli
------------------------

.. http:post:: https://events.bitdeli.com/events/(input-id)

   Sends an event to Bitdeli.

   **Example Request:**

   .. sourcecode:: http

      POST /events/i-04cee0b5ed03c3-5c9b17c3 HTTP/1.1
      Content-Type: application/json

      {
          "auth": "XLQLrvxlc8IM6FGOv28aH5g0t35",
          "uid": "user@example.com",
          "event": {"type": "purchase",
                    "item": "pickles"}
      }

where

- `input-id` is a unique identifier for the event stream. Get a new ID by
  connecting the Events API at `your account settings </settings/data>`_.

- `auth` is a secret authentication token that you got when you connected the Events API at
  `your account settings </settings/data>`_.

- `uid` uniquely identifies the :ref:`profile <profiles>` to which this event belongs to.

- `event` is an arbitrary JSON object containing your payload.

Example
'''''''

.. code-block:: guess

   curl --data-binary '{"auth": "XLQLrvxlc8IM6FGOv28aH5g0t35"",
                        "uid": "user@example.com",
                        "event": {"action": "test"}}'\
                        https://events.bitdeli.com/events/i-04cee0b5ed03c3-5c9b17c3


conf-data
=========

This repository contains academic conference metadata.

Structure
---------

* ``IndexVersion.json`` contains the datestamp (in POSIX seconds) of the last metadata update.
* ``EventIndex.json`` contains an overview of all stored metadata.
* ``data/`` contains the conference metadata itself.
* ``icons62/`` contains 62x62 px imagery.
* ``icons200/`` contains 200x200 px imagery.

Notes
-----

Apps should try to pull the metadata as infrequently as possible. ``IndexVersion.json`` is only 37 bytes and by comparing its time field you will always know if your cached copy is up to date. The date can be generated with ``date +%s``.

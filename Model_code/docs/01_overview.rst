*****************************************
Overview
*****************************************

Docker
=========================================

``Model_code`` consists of a docker-compose stack with the services below:

1. A customized `Jupyter <https://jupyter.org/>`__ service with a starter Python package installed. It runs on *Python 3.7*.
2. An `mlflow <https://mlflow.org/>`__ tracking server to log experiments.
3. A `postgresql <https://www.postgresql.org/>`__ database, which stores *mlflow* tracking information.

We mount several folders from our host to these services:

- The project base folder, ``./``, is mounted on the *Jupyter docker* container so that all modifications are synchronized immediately.
- The folder, ``./data/artifacts``, where the artifacts logged by *mlflow* are stored by default, is mounted on the *Jupyter* and *mlflow* services.
- The *postgresql data folder*, ``/var/lib/postgresql/data`` inside the container, is mounted locally on ``./data/db/`` to keep the database intact, after stopping the stack.

.. note::
   The project also includes these supplementary, standalone *Docker* images:

   1. for building Sphinx documentation (See `Documentation <04_documentation.html>`__)
   2. for testing *Python* code (See `Python Tests <05_test.html/#python>`__)

Python
=========================================

The code is organized in a *Python* package called ``setup.py``, which is located at ``./src/``. The package is ``pip`` installed to the *Jupyter docker* service in **editable** mode.

.. note::

   ``setup.py`` docstrings follow the `numpy style <https://numpydoc.readthedocs.io/en/latest/format.html>`__.

Please refer to the `Python API <modules.html>`__ for package documentation.

Makefile
=========================================

``Makefile`` commands are used extensively to work with ``Model_code``. For all commands, please refer to the help by running on the terminal:

.. code:: bash

   make help

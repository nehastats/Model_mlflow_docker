*****************************************
Testing
*****************************************

Python
=========================================

Build, code style, linting checks, and unittests of the Python package are automated using ``tox`` in a docker environment. You can run these tests by:

.. code:: bash

   make tox

This command builds a *docker* image called ``nehastats/Model_code/python-dev``. It then starts a container from the image and runs the Python tests.

Docker Stack
=========================================

You can test the integration of the Docker services (e.g., sending log requests to *mlflow tracking server* from the *Jupyter* service) automatically by running the *docker-compose* stack in "test" mode by executing:

.. code:: bash

   make test

Documentation
=========================================

To validate the documentation without building, run:

.. code:: bash

   make sphinx-html-test

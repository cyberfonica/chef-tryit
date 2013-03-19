## v1.1.0:

* [COOK-2330] - celeryconfig.py.erb tries to use non-existant String#upper method
* [COOK-2337] - It should be possible to pass environment variables
  through to gunicorn and celery supervisor configs
* [COOK-2403] - cookbook attribute expects argument to be a string
* [COOK-2453] - application_python should allow the working directory
  of gunicorn processes to be set via an attribute
* [COOK-2475] - celerybeat supervisor process is unnecessarily configured
* [COOK-2484] - virtualenv and requirements are installed as root
  instead of uid/gid specified by application properties

## v1.0.8:

* [COOK-2175] - Template cookbook attribute expecting a string,
getting symbol instead.

## v1.0.6:

* [COOK-2122] - pip was incorrectly using -E syntax
* [COOK-2147] - django sub-resource searched wrong directory for
  requirements.txt

## v1.0.4:

* [COOK-2042] - gunicorn LWRP support for virtualenv, deps

## v1.0.2:

* [COOK-1420] - template resource source cookbook is wrong
* [COOK-1421] - pip using old -E syntax
* [COOK-1422] - syncdb using --migrate option
* [COOK-1477] - pip requirements.txt and editable package support

## v1.0.0:

* [COOK-1246] - Initial release - relates to COOK-634.

aws-sdk-perl
============

Attempt to build a complete AWS SDK in Perl

This project is attempting to build an entire AWS SDK from the information
that is stored in other AWS SDKs. Other AWS SDKs have a "data-driven" approach,
meaning that the definitions for the method calls are stored in a data structure
describing input and output parameters.

The project is actually generating all of it's classes from boto

Organization
============

build-lib: Contains classes that convert a datastructure into class definitions

auto-lib: Contains the auto-generated classes

lib: Contains roles and classes that the auto-generated classes use to call the API,
sign requests, handle responses, etc.



#!/usr/bin/env perl
use strict; use warnings;
use Test::More;
use Test::Pod 1.41;
 
all_pod_files_ok('lib', 'auto-lib');

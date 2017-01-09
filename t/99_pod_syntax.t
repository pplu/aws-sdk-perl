#!/usr/bin/env perl
use strict; use warnings;

use if !$ENV{AUTHOR_TESTING}, 'Test::More', skip_all => 'author testing only';
use Test::Pod 1.41;
 
all_pod_files_ok('lib', -d 'auto-lib' ? 'auto-lib': ());

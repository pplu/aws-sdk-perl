#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Test::Class::Load;

use Test::Class::Load qw(auto-lib lib);
Test::Class->runtests;

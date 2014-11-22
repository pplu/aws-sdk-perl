#!/usr/bin/env perl

use Test::More;
use Test::Class::Moose::Load qw(lib auto-lib);

pass('all classes loaded');

done_testing;

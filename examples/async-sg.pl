#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

use lib 'auto-lib', 'lib';

use Paws;
use Future;

#use Mojo::IOLoop;
#use Paws::Net::MojoAsyncCaller;

use Data::Dumper;

#my $loop = Mojo::IOLoop->new;
#my $aws = Paws->new(config => { caller => Paws::Net::MojoAsyncCaller->new(loop => $loop) } );

my $aws = Paws->new(config => { caller => 'Paws::Net::MojoAsyncCaller' } );

my @fs;

my $f = $aws->service('EC2', region => 'eu-west-1')->DescribeRegions->then(sub {
  my $res = shift;

  foreach my $reg (map { $_->RegionName } @{ $res->Regions }) {
    my $as = $aws->service('EC2', 
      region => $reg,
    );
  
    my $f = $as->DescribeSecurityGroups->then(sub {
      my ($res) = @_;
      my @sg_names = map { $_->GroupName . " (" . $_->GroupId . ")" } @{ $res->SecurityGroups };
      say scalar(localtime) . " Got for $reg";
      Future->done(@sg_names)
    })->else(sub {
      say scalar(localtime) . " Failed $reg";
      Future->fail('Handled error');
    })->then(sub {
      my @res = @_;
      say join "\n", scalar(localtime), @res;
      say scalar(localtime) . " End for $reg"; 
      Future->done('DONE');
    });
    push @fs, $f;
  }
  Future->needs_all(@fs);
});
  

$f->on_ready( sub {
  my $f = shift;
  my $res = $f->get;
  say scalar(localtime) . ' Done';
  Mojo::IOLoop->stop;
  return Future->done($res);
});

$f->on_fail( sub {
  say "Something failed spectacularly";
});

#Mojo::IOLoop->start;
my $x = $f->get;

say scalar(localtime) . " " . Dumper($x);
say scalar(localtime) . " Done ioloop";

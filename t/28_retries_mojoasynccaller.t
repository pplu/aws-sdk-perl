#!/usr/bin/env perl

use strict;
use warnings;

use Paws;
use Test::Exception;
use Test::Timer;
use Test::More;

use lib 't/lib';

use Test::CustomCredentials;

# Timeout tests are very unstable on CI, probbaly due to high loads.
plan skip_all => 'CI detected. Skipping timeout tests' if $ENV{CI};
plan skip_all => 'Author testing only' unless $ENV{AUTHOR_TESTING};

my $mojo = eval {
  Paws->new(config => {
    caller => 'Paws::Net::MojoAsyncCaller',
    credentials => 'Test::CustomCredentials' 
  });
} or plan skip_all => "Unable to create Paws using MojoAsyncCaller";

# At this point we know we have Mojo::IOLoop loaded because theabove has to
# have loaded it
my $id = Mojo::IOLoop->server({}, sub {
  my (undef, $stream) = @_;
  # We're a really bad HTTP server; we'll just serve a 500 before we've even
  # seen a request
  # EC2 service implementation requires we give it some real XML in the error
  # body.
  my $body = "<error/>";

  $stream->write(
    "HTTP/1.1 500 Go Away\x0D\x0A" .
    "Content-Length: ${\length $body}\x0D\x0A" .
    "\x0D\x0A" . $body,
    sub {
      $stream->close_gracefully;
    }
  );
});
my $port = Mojo::IOLoop->acceptor($id)->port;

time_between(sub {
  throws_ok {
    $mojo->service('EC2',
                   region => 'test',
                   region_rules => [ { uri => "http://localhost:$port" } ]
                  )->DescribeInstances->get;
  } 'Paws::Exception', 'got exception';

  # EC2 attempts 5 times with an exponential growth factor 2, starting at 1/4
  # of a second plus random(1/2) second. Overall therefore this should take
  # between
  #   1/4 * (2 ** 5 - 1)           = 7.25 seconds
  #   1/4 * (2 ** 5 - 1) + 1/2 * 5 = 9.75 seconds
}, 7, 12, 'Timeout about right');

done_testing;

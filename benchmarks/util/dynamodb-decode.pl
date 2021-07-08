#!/usr/bin/env perl

# This is a simple tool to try and mock performance of decoding
# objects in Paws (without touching the network).

use Getopt::Long;
use strict;
use warnings;

my ($profile, $immutable, $verbose, $count, $iter);

BEGIN {
  GetOptions(
    'immutable' => \$immutable,
    'profile=s' => \$profile,
    'verbose|v' => \$verbose,
    'count=i' => \$count,
    'iter=i' => \$iter,
    'help|h' => \my $help,
  );
  if ($help) {
    die <<"EOS";
--count=# - number of items to return in a request
--iter=# - number of requests to make
--profile=<file> - turn on profiling, output to <file>
--immutable - have Paws turn on immutability of loaded classes
--verbose - dump out returned objects
EOS
  }

  if (defined $profile) {
    $ENV{NYTPROF} = "file=$profile:start=no";
    require Devel::NYTProf;
  }

  $iter ||= 1;
  $count ||= 1;
}

use Paws;
BEGIN { Paws->default_config->immutable(1) if $immutable }
use JSON::XS;
use Benchmark qw(timethis);

package Test::CustomCredentials {
  use Moose;
  use Paws::Credential;
  with 'Paws::Credential';

  sub access_key { 'CustomAK' };
  sub secret_key { 'CustomSK' };
  sub session_token {};

  __PACKAGE__->meta->make_immutable;
};

package MockCaller {
  use Moose;

  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  use Paws::Net::APIResponse;

  has mocked_response => (
    is => 'rw',
    isa => 'Maybe[Paws::Net::APIResponse]',
    default => undef,
  );

  sub send_request {
    my $self = shift;

    if ($self->mocked_response) {
      return $self->mocked_response;
    }

    return Paws::Net::APIResponse->new(
      status => 599,
      content => "an error occurred",
      headers => [],
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    if ($response->status == 599) {
      return Paws::Exception->new(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->response_to_object->process($call_object, $response);
    }
  }

  __PACKAGE__->meta->make_immutable;
};

my $mock_caller = MockCaller->new;

my $paws = Paws->new(
  config => {
    caller => $mock_caller,
    credentials => 'Test::CustomCredentials',
    region => 'us-west-2',
  },
);

my $dynamo_result = {
  Count => 0+$count,
  Items => [map {
    {
      field_int1 => { "N" => 0+$_ },
      field_str1 => { "S" => "str1_blahblahblah_" . $_ },
      field_int2 => { "N" => 0+$_ },
      field_str2 => { "S" => "str2_blahblahblah_" . $_ },
      field_int3 => { "N" => 0+$_ },
      field_str3 => { "S" => "str3_blahblahblah_" . $_ },
    }
  } (1..$count)],
  ScannedCount => 0+$count,
};

$mock_caller->mocked_response(
  Paws::Net::APIResponse->new(
    status => 200,
    content => encode_json($dynamo_result),
    headers => {
      "content-type" => "application/x-amz-json-1.0",
      "x-amzn-requestid" => "000000000000000000000000000000000000",
    },
  )
);

my $results = [];
DB::enable_profile() if $profile;
for ((1..$iter)) {
  my $query = $paws->service('DynamoDB')->Query(
    TableName => "sample-table",
    IndexName => "sample-index",
    Limit => $count,
  );
  push @$results, $query if $verbose;
}
DB::disable_profile() if $profile;

if ($verbose) {
  require Data::Printer;
  &Data::Printer::p($_, class => { expand => 'all' }) for @$results;
}

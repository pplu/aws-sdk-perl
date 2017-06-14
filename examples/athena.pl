#!/usr/bin/env perl

# Example contributed by frioux in (https://github.com/pplu/aws-sdk-perl/issues/176).

use lib 'auto-lib', 'lib';

use 5.26.0;
use warnings;

use experimental 'signatures';

use Data::GUID 'guid_string';
use DateTime;
use Devel::Dwarn;
use Getopt::Long::Descriptive;
use Net::Amazon::S3;
use Paws;

my ($opt, $usage) = describe_options(
  '$0 %o <some-arg>',
  [ 'sql=s', "sql to run", { required => 1  } ],
  [ 'database=s', "db to run in (default is adhoc)", { default => 'adhoc'  } ],
  [ 's3-output-location=s',
      "S3 Prefix to store to " .
        "(default is s3://foobar/$ENV{USER}-test)",
      { default  => "s3://foobar/$ENV{USER}-test" }
  ],
  [ 'local-output-location=s',
    "Location to download s3 files to (default is '.')",
    { default  => "." }
  ],
  [],
  [ 'verbose|v',  "print extra stuff"            ],
  [ 'help',       "print usage message and exit", { shortcircuit => 1 } ],
);

print($usage->text), exit if $opt->help;

my $athena = Paws->service('Athena', region => 'us-east-1');

my $query = $athena->StartQueryExecution(
  QueryString => $opt->sql,
  ResultConfiguration => {
    OutputLocation => $opt->s3_output_location,
  },
  QueryExecutionContext => {
    Database => $opt->database,
  },
  ClientRequestToken => guid_string(),
);

my $status;
do {
  $status = $athena->GetQueryExecution(
    QueryExecutionId => $query->QueryExecutionId,
  );
  sleep 1;
} until _is_complete($status);

my $s = $status->QueryExecution->Status;
my $start = DateTime->from_epoch( epoch => $s->SubmissionDateTime );
my $end = DateTime->from_epoch( epoch => $s->CompletionDateTime );
warn sprintf <<'OUT', $s->State, $start, $end if $opt->verbose;
Query %s!
  started at %s
 finished at %s
OUT

if ($s->State eq 'FAILED') {
  warn $s->StateChangeReason . "\n";
  exit 1;
} elsif ($s->State eq 'CANCELLED') {
  warn "query cancelled\n";
  exit 0;
}

warn "results are at " .
  $status->QueryExecution->ResultConfiguration->OutputLocation . "\n"
  if $opt->verbose;

my $a = Paws::Credential::ProviderChain->new->selected_provider;

my $s3 = Net::Amazon::S3->new(
  aws_access_key_id     => $a->access_key,
  aws_secret_access_key => $a->secret_key,
);

my ($bucket_name, $key, $file) = parse_s3_url($status->QueryExecution->ResultConfiguration->OutputLocation);

my $bucket = $s3->bucket($bucket_name);
my $local = $opt->local_output_location . '/' . $file;

warn "downloading $key to $local\n" if $opt->verbose;

$bucket->get_key_filename( $key, 'GET', $local );

sub _is_complete ($s) {
  $s->QueryExecution->Status->State =~ m/^(?:succeeded|failed|cancelled)$/i
}

sub parse_s3_url ($url) {
  $url =~ s/^s3:\/\///;

  my ($bucket, $key) = split qr(/), $url, 2;

  my ($file) = ($key =~ m(.*?/?([^/]+)$));

  return ($bucket, $key, $file);
}

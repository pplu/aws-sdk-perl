#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Data::Printer;
use Data::Dumper;
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/glacier/uploadid',
    mock_mode => 'REPLAY',
  ),
#  credentials => 'Test::CustomCredentials'
});

my $glacier = $paws->service('Glacier', region => 'us-west-2');

my $vault_output = $glacier->CreateVault(
  AccountId => '-',
  VaultName => 'testvault',
 );

my $upload_output = $glacier->InitiateMultipartUpload(
  AccountId => '-',
  VaultName => 'testvault',
  PartSize => 1048576,
 );


ok($upload_output->UploadId, 'Glacier InitiateMultipartUpload returned an uploadId');

done_testing;


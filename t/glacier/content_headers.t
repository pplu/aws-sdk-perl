#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';
use if (!-e 'META.json'), lib => './auto-lib';

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
    mock_dir => 't/glacier/content_headers',
    mock_mode => 'REPLAY',
    mock_type => 'NoResponseMockCaller',
#    mock_mode => 'RECORD',
  ),
  credentials => 'Test::CustomCredentials'
});

my $idname = 'testid';
my $vaultname = 'testvault';
my $glacier = $paws->service('Glacier', region => 'us-west-2');

my %md5_methods = (
  'CreateVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'UploadArchive' => {
    AccountId => $idname,
    ArchiveDescription => 'testing',
    Body => 'example-data-to-upload',
    Checksum => 'beb0fe31a1c7ca8c6c04d574ea906e3f97b31fdca7571defb5b44dca89b5af60',
    VaultName => $vaultname,
  },
  'InitiateJob' => {
    AccountId => $idname,
    JobParameters => {
      Description => 'My inventory job',
      Format => 'CSV',
      SNSTopic =>
'arn:aws:sns:us-west-2:111111111111:Glacier-InventoryRetrieval-topic-Example',
      Type => 'inventory-retrieval'
    },
    VaultName => $vaultname,
  },
  'ListJobs' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'DeleteArchive' => {
    AccountId => $idname,
    ArchiveId => 'testarchive',
    VaultName => $vaultname,
  },
  'DeleteVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
);

foreach my $method (qw/CreateVault UploadArchive InitiateJob ListJobs DeleteArchive DeleteVault/) {
  my $response;
  eval { $response = $glacier->$method(%{ $md5_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

## The HTTP headers should contain a Content-MD5 header
  ok($glacier->caller->actual_request->header('Content-MD5'), "Glacier $method header contains Content-MD5");
}

done_testing;

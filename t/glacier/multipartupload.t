#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Carp;
use Test::More;
use URI::Escape;
use Digest::SHA 'sha256_hex';

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/glacier/multipartupload',
    mock_mode => 'REPLAY',
  ),
  credentials => 'Test::CustomCredentials'
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

TODO: {
  $TODO = 'May fail if Glacier InitiateMultipartUpload fails';
  my $part_output = $glacier->UploadMultipartPart(
    AccountId => '-',
    UploadId => $upload_output->UploadId,
    Body => 'X' x 1048576,
    VaultName => 'testvault',
    Range => 'bytes 0-1048575/*',
    Checksum => sha256_hex('X' x 1048576),
   );
  ok($part_output->Checksum, 'Glacier UploadMultipartPart returns a Checksum');
  
  my $complete = $glacier->CompleteMultipartUpload(
    AccountId => '-',
    ArchiveSize => 1048576,
    UploadId => $upload_output->UploadId,
    VaultName => 'testvault',
    Checksum => sha256_hex('X' x 1048576),
   );
  ok($complete->Location, 'Glacier CompleteMultipartUpload returns a Location');
};

done_testing;


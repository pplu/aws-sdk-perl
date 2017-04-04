#!/usr/bin/env perl

use Test::More;
use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/17_s3metadata',
    mock_mode => 'REPLAY',
  )
});

my $s3 = $paws->service('S3');

my $result = $s3->GetObject("Key" => "testmeta","Bucket" => "test-meta-paws");

cmp_ok($result->Metadata->Map->{ meta1 }, 'eq', 'meta1value', 'Found metadata key 1');
cmp_ok($result->Metadata->Map->{ meta2 }, 'eq', 'meta2value', 'Found metadata key 2');

is_deeply($result->Metadata->Map, { meta1 => 'meta1value', meta2 => 'meta2value' }, 'Got a hash in Metadata Map');

done_testing;

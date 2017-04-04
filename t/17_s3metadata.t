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

cmp_ok($result->Metadata->Map->{ key1 }, 'eq', 'value1', 'Found metadata key1');
cmp_ok($result->Metadata->Map->{ key2 }, 'eq', 'value2', 'Found metadata key2');

is_deeply($result->Metadata->Map, { key1 => 'value1', key2 => 'value2' }, 'Got a hash in Metadata Map');

done_testing;

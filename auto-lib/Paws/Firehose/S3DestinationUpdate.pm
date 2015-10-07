package Paws::Firehose::S3DestinationUpdate;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str');
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::BufferingHints');
  has CompressionFormat => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Firehose::EncryptionConfiguration');
  has Prefix => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

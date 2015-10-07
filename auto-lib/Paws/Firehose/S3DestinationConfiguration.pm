package Paws::Firehose::S3DestinationConfiguration;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str', required => 1);
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::BufferingHints');
  has CompressionFormat => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Firehose::EncryptionConfiguration');
  has Prefix => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

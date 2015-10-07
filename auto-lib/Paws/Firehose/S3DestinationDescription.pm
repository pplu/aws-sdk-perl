package Paws::Firehose::S3DestinationDescription;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str', required => 1);
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::BufferingHints', required => 1);
  has CompressionFormat => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Firehose::EncryptionConfiguration', required => 1);
  has Prefix => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

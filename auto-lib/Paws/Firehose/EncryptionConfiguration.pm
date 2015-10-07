package Paws::Firehose::EncryptionConfiguration;
  use Moose;
  has KMSEncryptionConfig => (is => 'ro', isa => 'Paws::Firehose::KMSEncryptionConfig');
  has NoEncryptionConfig => (is => 'ro', isa => 'Str');
1;

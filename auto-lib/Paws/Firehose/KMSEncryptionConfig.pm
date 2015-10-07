package Paws::Firehose::KMSEncryptionConfig;
  use Moose;
  has AWSKMSKeyARN => (is => 'ro', isa => 'Str', required => 1);
1;

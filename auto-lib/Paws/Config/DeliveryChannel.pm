package Paws::Config::DeliveryChannel;
  use Moose;
  has configSnapshotDeliveryProperties => (is => 'ro', isa => 'Paws::Config::ConfigSnapshotDeliveryProperties');
  has name => (is => 'ro', isa => 'Str');
  has s3BucketName => (is => 'ro', isa => 'Str');
  has s3KeyPrefix => (is => 'ro', isa => 'Str');
  has snsTopicARN => (is => 'ro', isa => 'Str');
1;

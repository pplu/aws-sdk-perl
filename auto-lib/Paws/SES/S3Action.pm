package Paws::SES::S3Action;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has ObjectKeyPrefix => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;

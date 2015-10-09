package Paws::IoT::S3Action;
  use Moose;
  has bucketName => (is => 'ro', isa => 'Str', required => 1);
  has key => (is => 'ro', isa => 'Str', required => 1);
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
1;

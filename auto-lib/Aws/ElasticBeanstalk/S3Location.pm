package Aws::ElasticBeanstalk::S3Location {
  use Moose;
  with ('AWS::API::ResultParser');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
}
1

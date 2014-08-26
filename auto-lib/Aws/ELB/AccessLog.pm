package Aws::ELB::AccessLog {
  use Moose;
  with ('AWS::API::ResultParser');
  has EmitInterval => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3BucketPrefix => (is => 'ro', isa => 'Str');
}
1

package Aws::S3::LoggingEnabled {
  use Moose;
  has TargetBucket => (is => 'ro', isa => 'Str');
  has TargetGrants => (is => 'ro', isa => 'ArrayRef[Aws::S3::TargetGrant]');
  has TargetPrefix => (is => 'ro', isa => 'Str');
}
1

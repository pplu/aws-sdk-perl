package Aws::S3::Rule {
  use Moose;
  has Expiration => (is => 'ro', isa => 'Aws::S3::LifecycleExpiration');
  has ID => (is => 'ro', isa => 'Str');
  has NoncurrentVersionExpiration => (is => 'ro', isa => 'Aws::S3::NoncurrentVersionExpiration');
  has NoncurrentVersionTransition => (is => 'ro', isa => 'Aws::S3::NoncurrentVersionTransition');
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Transition => (is => 'ro', isa => 'Aws::S3::Transition');
}
1

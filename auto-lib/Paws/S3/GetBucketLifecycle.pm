
package Paws::S3::GetBucketLifecycle {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketLifecycle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketLifecycleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketLifecycleResult');
}
1;
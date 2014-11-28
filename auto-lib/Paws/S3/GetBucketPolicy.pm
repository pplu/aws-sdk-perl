
package Paws::S3::GetBucketPolicy {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketPolicyResult');
}
1;
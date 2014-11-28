
package Paws::S3::GetBucketLifecycleOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::Rule]');

}
1;
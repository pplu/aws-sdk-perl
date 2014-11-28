
package Paws::S3::GetBucketCorsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Paws::S3::CORSRule]');

}
1;
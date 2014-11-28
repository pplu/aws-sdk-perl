
package Paws::S3::CreateBucketOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Location => (is => 'ro', isa => 'Str');

}
1;
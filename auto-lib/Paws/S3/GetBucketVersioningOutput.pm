
package Paws::S3::GetBucketVersioningOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has MFADelete => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

}
1;
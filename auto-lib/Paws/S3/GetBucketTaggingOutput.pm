
package Paws::S3::GetBucketTaggingOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', required => 1);

}
1;
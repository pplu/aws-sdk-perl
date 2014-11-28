
package Paws::S3::ListBucketsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::S3::Bucket]');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');

}
1;
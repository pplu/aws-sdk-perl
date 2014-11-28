
package Paws::S3::GetBucketAclOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::S3::Grant]');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');

}
1;
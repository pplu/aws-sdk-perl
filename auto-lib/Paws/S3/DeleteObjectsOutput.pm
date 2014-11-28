
package Paws::S3::DeleteObjectsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Deleted => (is => 'ro', isa => 'ArrayRef[Paws::S3::DeletedObject]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::S3::Error]');

}
1;
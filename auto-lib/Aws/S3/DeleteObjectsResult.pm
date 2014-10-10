
package Aws::S3::DeleteObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Deleted => (is => 'ro', isa => 'ArrayRef[Aws::S3::DeletedObject]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Aws::S3::Error]', traits => ['Unwrapped'], xmlname => 'Error');

}
1;
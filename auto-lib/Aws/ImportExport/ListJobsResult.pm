
package Aws::ImportExport::ListJobsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Jobs => (is => 'ro', isa => 'ArrayRef[Aws::ImportExport::Job]');

}
1;

package Paws::ImportExport::ListJobsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::ImportExport::Job]');

}
1;
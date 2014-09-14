
package Aws::DataPipeline::QueryObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
1;

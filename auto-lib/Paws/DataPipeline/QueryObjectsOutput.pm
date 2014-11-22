
package Paws::DataPipeline::QueryObjectsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
1;
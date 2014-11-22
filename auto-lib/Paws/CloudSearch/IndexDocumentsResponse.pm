
package Paws::CloudSearch::IndexDocumentsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;
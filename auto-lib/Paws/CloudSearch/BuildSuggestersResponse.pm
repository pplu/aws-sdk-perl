
package Paws::CloudSearch::BuildSuggestersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;
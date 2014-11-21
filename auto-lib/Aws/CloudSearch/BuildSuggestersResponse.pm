
package Aws::CloudSearch::BuildSuggestersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;
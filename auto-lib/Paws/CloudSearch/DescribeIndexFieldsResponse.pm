
package Paws::CloudSearch::DescribeIndexFieldsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IndexFields => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::IndexFieldStatus]', required => 1);

}
1;
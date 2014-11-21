
package Aws::CloudSearch::DescribeIndexFieldsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexFields => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::IndexFieldStatus]', required => 1);

}
1;
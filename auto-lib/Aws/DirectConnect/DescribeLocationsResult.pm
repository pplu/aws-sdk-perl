
package Aws::DirectConnect::DescribeLocationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has locations => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Location]');

}
1;

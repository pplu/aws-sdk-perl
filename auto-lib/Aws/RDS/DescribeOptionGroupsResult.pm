
package Aws::RDS::DescribeOptionGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroup]', traits => ['Unwrapped'], xmlname => 'OptionGroup');

}
1;
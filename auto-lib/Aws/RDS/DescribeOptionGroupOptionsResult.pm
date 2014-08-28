
package Aws::RDS::DescribeOptionGroupOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOption]', traits => ['Unwrapped'], xmlname => 'OptionGroupOption');

}
1;
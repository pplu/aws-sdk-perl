
package Aws::RDS::CreateOptionGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
1;
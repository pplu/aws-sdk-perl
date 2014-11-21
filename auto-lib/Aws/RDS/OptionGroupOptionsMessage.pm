
package Aws::RDS::OptionGroupOptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOption]');

}
1;
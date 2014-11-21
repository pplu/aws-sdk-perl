
package Aws::RDS::OptionGroups {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroup]');

}
1;
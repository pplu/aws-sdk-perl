
package Paws::RDS::OptionGroups {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroup]');

}
1;
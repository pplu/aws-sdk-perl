
package Paws::RDS::OptionGroupOptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroupOption]');

}
1;
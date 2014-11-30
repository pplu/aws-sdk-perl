
package Paws::RDS::ModifyOptionGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Paws::RDS::OptionGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyOptionGroupResult

=head1 ATTRIBUTES

=head2 OptionGroup => Paws::RDS::OptionGroup

  


=cut


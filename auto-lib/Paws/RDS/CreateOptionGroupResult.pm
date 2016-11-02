
package Paws::RDS::CreateOptionGroupResult;
  use Moose;
  has OptionGroup => (is => 'ro', isa => 'Paws::RDS::OptionGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateOptionGroupResult

=head1 ATTRIBUTES


=head2 OptionGroup => L<Paws::RDS::OptionGroup>




=head2 _request_id => Str


=cut


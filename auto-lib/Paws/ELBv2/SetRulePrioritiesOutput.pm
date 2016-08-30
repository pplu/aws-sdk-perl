
package Paws::ELBv2::SetRulePrioritiesOutput;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Rule]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetRulePrioritiesOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::ELBv2::Rule>]

Information about the rules.




=cut


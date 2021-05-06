
package Paws::ELBv2::ModifyRuleOutput;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Rule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyRuleOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::ELBv2::Rule>]

Information about the modified rule.


=head2 _request_id => Str


=cut


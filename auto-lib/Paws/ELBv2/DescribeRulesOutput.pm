
package Paws::ELBv2::DescribeRulesOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Rule]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeRulesOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 Rules => ArrayRef[L<Paws::ELBv2::Rule>]

Information about the rules.


=head2 _request_id => Str


=cut



package Paws::GlobalAccelerator::ListByoipCidrsResponse;
  use Moose;
  has ByoipCidrs => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::ByoipCidr]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListByoipCidrsResponse

=head1 ATTRIBUTES


=head2 ByoipCidrs => ArrayRef[L<Paws::GlobalAccelerator::ByoipCidr>]

Information about your address ranges.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

1;
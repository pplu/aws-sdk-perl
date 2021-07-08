
package Paws::GlobalAccelerator::WithdrawByoipCidrResponse;
  use Moose;
  has ByoipCidr => (is => 'ro', isa => 'Paws::GlobalAccelerator::ByoipCidr');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::WithdrawByoipCidrResponse

=head1 ATTRIBUTES


=head2 ByoipCidr => L<Paws::GlobalAccelerator::ByoipCidr>

Information about the address pool.


=head2 _request_id => Str


=cut

1;

package Paws::DirectConnect::AssociateMacSecKeyResponse;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has MacSecKeys => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::MacSecKey]', traits => ['NameInRequest'], request_name => 'macSecKeys' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AssociateMacSecKeyResponse

=head1 ATTRIBUTES


=head2 ConnectionId => Str

The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG
(dxlag-xxxx).


=head2 MacSecKeys => ArrayRef[L<Paws::DirectConnect::MacSecKey>]

The MAC Security (MACsec) security keys associated with the dedicated
connection.


=head2 _request_id => Str


=cut

1;
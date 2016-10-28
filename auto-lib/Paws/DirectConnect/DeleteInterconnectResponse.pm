
package Paws::DirectConnect::DeleteInterconnectResponse;
  use Moose;
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'interconnectState' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteInterconnectResponse

=head1 ATTRIBUTES


=head2 InterconnectState => Str



Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">


=cut

1;

package Paws::DirectConnect::ConfirmConnectionResponse;
  use Moose;
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionState' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionState => Str



Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">


=cut

1;
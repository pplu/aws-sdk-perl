
package Paws::DirectConnect::DeleteVirtualInterfaceResponse;
  use Moose;
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualInterfaceState' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteVirtualInterfaceResponse

=head1 ATTRIBUTES


=head2 VirtualInterfaceState => Str



Valid values are: C<"confirming">, C<"verifying">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">
=head2 _request_id => Str


=cut

1;

package Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse;
  use Moose;
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceState' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmPrivateVirtualInterfaceResponse

=head1 ATTRIBUTES


=head2 VirtualInterfaceState => Str



Valid values are: C<"confirming">, C<"verifying">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">


=cut

1;
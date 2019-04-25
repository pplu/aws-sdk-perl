
package Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse;
  use Moose;
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceState' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmPublicVirtualInterfaceResponse

=head1 ATTRIBUTES


=head2 VirtualInterfaceState => Str

The state of the virtual interface. The following are the possible
values:

=over

=item *

C<confirming>: The creation of the virtual interface is pending
confirmation from the virtual interface owner. If the owner of the
virtual interface is different from the owner of the connection on
which it is provisioned, then the virtual interface will remain in this
state until it is confirmed by the virtual interface owner.

=item *

C<verifying>: This state only applies to public virtual interfaces.
Each public virtual interface needs validation before the virtual
interface can be created.

=item *

C<pending>: A virtual interface is in this state from the time that it
is created until the virtual interface is ready to forward traffic.

=item *

C<available>: A virtual interface that is able to forward traffic.

=item *

C<down>: A virtual interface that is BGP down.

=item *

C<deleting>: A virtual interface is in this state immediately after
calling DeleteVirtualInterface until it can no longer forward traffic.

=item *

C<deleted>: A virtual interface that cannot forward traffic.

=item *

C<rejected>: The virtual interface owner has declined creation of the
virtual interface. If a virtual interface in the C<Confirming> state is
deleted by the virtual interface owner, the virtual interface enters
the C<Rejected> state.

=back


Valid values are: C<"confirming">, C<"verifying">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">
=head2 _request_id => Str


=cut

1;
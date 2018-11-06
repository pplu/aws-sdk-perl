
package Paws::DirectConnect::DeleteInterconnectResponse;
  use Moose;
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectState' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteInterconnectResponse

=head1 ATTRIBUTES


=head2 InterconnectState => Str

The state of the interconnect. The following are the possible values:

=over

=item *

C<requested>: The initial state of an interconnect. The interconnect
stays in the requested state until the Letter of Authorization (LOA) is
sent to the customer.

=item *

C<pending>: The interconnect is approved, and is being initialized.

=item *

C<available>: The network link is up, and the interconnect is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The interconnect is being deleted.

=item *

C<deleted>: The interconnect is deleted.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">
=head2 _request_id => Str


=cut

1;
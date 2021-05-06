
package Paws::StorageGateway::JoinDomainOutput;
  use Moose;
  has ActiveDirectoryStatus => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::JoinDomainOutput

=head1 ATTRIBUTES


=head2 ActiveDirectoryStatus => Str

Indicates the status of the gateway as a member of the Active Directory
domain.

=over

=item *

ACCESS_DENIED: Indicates that the C<JoinDomain> operation failed due to
an authentication error.

=item *

DETACHED: Indicates that gateway is not joined to a domain.

=item *

JOINED: Indicates that the gateway has successfully joined a domain.

=item *

JOINING: Indicates that a C<JoinDomain> operation is in progress.

=item *

NETWORK_ERROR: Indicates that C<JoinDomain> operation failed due to a
network or connectivity error.

=item *

TIMEOUT: Indicates that the C<JoinDomain> operation failed because the
operation didn't complete within the allotted time.

=item *

UNKNOWN_ERROR: Indicates that the C<JoinDomain> operation failed due to
another type of error.

=back


Valid values are: C<"ACCESS_DENIED">, C<"DETACHED">, C<"JOINED">, C<"JOINING">, C<"NETWORK_ERROR">, C<"TIMEOUT">, C<"UNKNOWN_ERROR">
=head2 GatewayARN => Str

The unique Amazon Resource Name (ARN) of the gateway that joined the
domain.


=head2 _request_id => Str


=cut

1;
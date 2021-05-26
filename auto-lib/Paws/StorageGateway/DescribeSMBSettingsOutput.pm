
package Paws::StorageGateway::DescribeSMBSettingsOutput;
  use Moose;
  has ActiveDirectoryStatus => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has SMBGuestPasswordSet => (is => 'ro', isa => 'Bool');
  has SMBSecurityStrategy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSMBSettingsOutput

=head1 ATTRIBUTES


=head2 ActiveDirectoryStatus => Str

Indicates the status of a gateway that is a member of the Active
Directory domain.

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
=head2 DomainName => Str

The name of the domain that the gateway is joined to.


=head2 GatewayARN => Str




=head2 SMBGuestPasswordSet => Bool

This value is true if a password for the guest user
E<ldquo>smbguestE<rdquo> is set, and otherwise false.


=head2 SMBSecurityStrategy => Str

The type of security strategy that was specified for file gateway.

ClientSpecified: if you use this option, requests are established based
on what is negotiated by the client. This option is recommended when
you want to maximize compatibility across different clients in your
environment.

MandatorySigning: if you use this option, file gateway only allows
connections from SMBv2 or SMBv3 clients that have signing enabled. This
option works with SMB clients on Microsoft Windows Vista, Windows
Server 2008 or newer.

MandatoryEncryption: if you use this option, file gateway only allows
connections from SMBv3 clients that have encryption enabled. This
option is highly recommended for environments that handle sensitive
data. This option works with SMB clients on Microsoft Windows 8,
Windows Server 2012 or newer.

Valid values are: C<"ClientSpecified">, C<"MandatorySigning">, C<"MandatoryEncryption">
=head2 _request_id => Str


=cut

1;
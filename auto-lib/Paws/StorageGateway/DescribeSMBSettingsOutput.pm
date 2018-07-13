
package Paws::StorageGateway::DescribeSMBSettingsOutput;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has SMBGuestPasswordSet => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeSMBSettingsOutput

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of the domain that the gateway is joined to.


=head2 GatewayARN => Str




=head2 SMBGuestPasswordSet => Bool

This value is true if a password for the guest user
E<ldquo>smbguestE<rdquo> is set, and otherwise false.


=head2 _request_id => Str


=cut

1;
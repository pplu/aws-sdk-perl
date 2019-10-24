# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeSMBSettingsOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::StorageGateway::Types qw//;
  has DomainName => (is => 'ro', isa => Str);
  has GatewayARN => (is => 'ro', isa => Str);
  has SMBGuestPasswordSet => (is => 'ro', isa => Bool);
  has SMBSecurityStrategy => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SMBSecurityStrategy' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'SMBGuestPasswordSet' => {
                                          'type' => 'Bool'
                                        },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 SMBSecurityStrategy => Str

The type of security strategy that was specified for file gateway.

ClientSpecified: SMBv1 is enabled, SMB signing is offered but not
required, SMB encryption is offered but not required.

MandatorySigning: SMBv1 is disabled, SMB signing is required, SMB
encryption is offered but not required.

MandatoryEncryption: SMBv1 is disabled, SMB signing is offered but not
required, SMB encryption is required.

Valid values are: C<"ClientSpecified">, C<"MandatorySigning">, C<"MandatoryEncryption">
=head2 _request_id => Str


=cut

1;
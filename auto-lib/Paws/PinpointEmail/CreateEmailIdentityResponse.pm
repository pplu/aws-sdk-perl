
package Paws::PinpointEmail::CreateEmailIdentityResponse;
  use Moose;
  has DkimAttributes => (is => 'ro', isa => 'Paws::PinpointEmail::DkimAttributes');
  has IdentityType => (is => 'ro', isa => 'Str');
  has VerifiedForSendingStatus => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateEmailIdentityResponse

=head1 ATTRIBUTES


=head2 DkimAttributes => L<Paws::PinpointEmail::DkimAttributes>

An object that contains information about the DKIM attributes for the
identity. This object includes the tokens that you use to create the
CNAME records that are required to complete the DKIM verification
process.


=head2 IdentityType => Str

The email identity type.

Valid values are: C<"EMAIL_ADDRESS">, C<"DOMAIN">, C<"MANAGED_DOMAIN">
=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. In Amazon Pinpoint,
you can only send email from verified email addresses or domains. For
more information about verifying identities, see the Amazon Pinpoint
User Guide
(http://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut


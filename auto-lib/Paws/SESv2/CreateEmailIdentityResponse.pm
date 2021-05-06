
package Paws::SESv2::CreateEmailIdentityResponse;
  use Moose;
  has DkimAttributes => (is => 'ro', isa => 'Paws::SESv2::DkimAttributes');
  has IdentityType => (is => 'ro', isa => 'Str');
  has VerifiedForSendingStatus => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateEmailIdentityResponse

=head1 ATTRIBUTES


=head2 DkimAttributes => L<Paws::SESv2::DkimAttributes>

An object that contains information about the DKIM attributes for the
identity.


=head2 IdentityType => Str

The email identity type.

Valid values are: C<"EMAIL_ADDRESS">, C<"DOMAIN">, C<"MANAGED_DOMAIN">
=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. You can only send
email from verified email addresses or domains. For more information
about verifying identities, see the Amazon Pinpoint User Guide
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut


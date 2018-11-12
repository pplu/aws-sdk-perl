
package Paws::PinpointEmail::GetEmailIdentityResponse;
  use Moose;
  has DkimAttributes => (is => 'ro', isa => 'Paws::PinpointEmail::DkimAttributes');
  has FeedbackForwardingStatus => (is => 'ro', isa => 'Bool');
  has IdentityType => (is => 'ro', isa => 'Str');
  has MailFromAttributes => (is => 'ro', isa => 'Paws::PinpointEmail::MailFromAttributes');
  has VerifiedForSendingStatus => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetEmailIdentityResponse

=head1 ATTRIBUTES


=head2 DkimAttributes => L<Paws::PinpointEmail::DkimAttributes>

An object that contains information about the DKIM attributes for the
identity. This object includes the tokens that you use to create the
CNAME records that are required to complete the DKIM verification
process.


=head2 FeedbackForwardingStatus => Bool

The feedback forwarding configuration for the identity.

If the value is C<true>, Amazon Pinpoint sends you email notifications
when bounce or complaint events occur. Amazon Pinpoint sends this
notification to the address that you specified in the Return-Path
header of the original email.

When you set this value to C<false>, Amazon Pinpoint sends
notifications through other mechanisms, such as by notifying an Amazon
SNS topic or another event destination. You're required to have a
method of tracking bounces and complaints. If you haven't set up
another mechanism for receiving bounce or complaint notifications,
Amazon Pinpoint sends an email notification when these events occur
(even if this setting is disabled).


=head2 IdentityType => Str

The email identity type.

Valid values are: C<"EMAIL_ADDRESS">, C<"DOMAIN">, C<"MANAGED_DOMAIN">
=head2 MailFromAttributes => L<Paws::PinpointEmail::MailFromAttributes>

An object that contains information about the Mail-From attributes for
the email identity.


=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. In Amazon Pinpoint,
you can only send email from verified email addresses or domains. For
more information about verifying identities, see the Amazon Pinpoint
User Guide
(http://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut


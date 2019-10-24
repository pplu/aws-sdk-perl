
package Paws::PinpointEmail::GetEmailIdentityResponse;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_MailFromAttributes PinpointEmail_Tag PinpointEmail_DkimAttributes/;
  has DkimAttributes => (is => 'ro', isa => PinpointEmail_DkimAttributes);
  has FeedbackForwardingStatus => (is => 'ro', isa => Bool);
  has IdentityType => (is => 'ro', isa => Str);
  has MailFromAttributes => (is => 'ro', isa => PinpointEmail_MailFromAttributes);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag]);
  has VerifiedForSendingStatus => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FeedbackForwardingStatus' => {
                                               'type' => 'Bool'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MailFromAttributes' => {
                                         'class' => 'Paws::PinpointEmail::MailFromAttributes',
                                         'type' => 'PinpointEmail_MailFromAttributes'
                                       },
               'Tags' => {
                           'class' => 'Paws::PinpointEmail::Tag',
                           'type' => 'ArrayRef[PinpointEmail_Tag]'
                         },
               'IdentityType' => {
                                   'type' => 'Str'
                                 },
               'VerifiedForSendingStatus' => {
                                               'type' => 'Bool'
                                             },
               'DkimAttributes' => {
                                     'class' => 'Paws::PinpointEmail::DkimAttributes',
                                     'type' => 'PinpointEmail_DkimAttributes'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetEmailIdentityResponse

=head1 ATTRIBUTES


=head2 DkimAttributes => PinpointEmail_DkimAttributes

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
=head2 MailFromAttributes => PinpointEmail_MailFromAttributes

An object that contains information about the Mail-From attributes for
the email identity.


=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that are
associated with the email identity.


=head2 VerifiedForSendingStatus => Bool

Specifies whether or not the identity is verified. In Amazon Pinpoint,
you can only send email from verified email addresses or domains. For
more information about verifying identities, see the Amazon Pinpoint
User Guide
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html).


=head2 _request_id => Str


=cut



package Paws::SES::SendEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'Paws::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has ReturnPathArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has SourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SES::MessageTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SendEmailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendEmail - Arguments for method SendEmail on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendEmail on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SendEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendEmail.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SendEmail
    # The following example sends a formatted email:
    my $SendEmailResponse = $email->SendEmail(
      {
        'Destination' => {
          'BccAddresses' => [

          ],
          'CcAddresses' => ['recipient3@example.com'],
          'ToAddresses' =>
            [ 'recipient1@example.com', 'recipient2@example.com' ]
        },
        'Message' => {
          'Body' => {
            'Html' => {
              'Charset' => 'UTF-8',
              'Data' =>
'This message body contains HTML formatting. It can, for example, contain links like this one: <a class="ulink" href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide" target="_blank">Amazon SES Developer Guide</a>.'
            },
            'Text' => {
              'Charset' => 'UTF-8',
              'Data'    => 'This is the message body in text format.'
            }
          },
          'Subject' => {
            'Charset' => 'UTF-8',
            'Data'    => 'Test email'
          }
        },
        'ReplyToAddresses' => [

        ],
        'ReturnPath'    => '',
        'ReturnPathArn' => '',
        'Source'        => 'sender@example.com',
        'SourceArn'     => ''
      }
    );

    # Results:
    my $MessageId = $SendEmailResponse->MessageId;

    # Returns a L<Paws::SES::SendEmailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SendEmail>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set to use when you send an email using
C<SendEmail>.



=head2 B<REQUIRED> Destination => L<Paws::SES::Destination>

The destination for this email, composed of To:, CC:, and BCC: fields.



=head2 B<REQUIRED> Message => L<Paws::SES::Message>

The message to be sent.



=head2 ReplyToAddresses => ArrayRef[Str|Undef]

The reply-to email address(es) for the message. If the recipient
replies to the message, each reply-to address will receive the reply.



=head2 ReturnPath => Str

The email address that bounces and complaints will be forwarded to when
feedback forwarding is enabled. If the message cannot be delivered to
the recipient, then an error message will be returned from the
recipient's ISP; this message will then be forwarded to the email
address specified by the C<ReturnPath> parameter. The C<ReturnPath>
parameter is never overwritten. This email address must be either
individually verified with Amazon SES, or from a domain that has been
verified with Amazon SES.



=head2 ReturnPathArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to use the email address specified in the
C<ReturnPath> parameter.

For example, if the owner of C<example.com> (which has ARN
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>) attaches a
policy to it that authorizes you to use C<feedback@example.com>, then
you would specify the C<ReturnPathArn> to be
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>, and the
C<ReturnPath> to be C<feedback@example.com>.

For more information about sending authorization, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).



=head2 B<REQUIRED> Source => Str

The email address that is sending the email. This email address must be
either individually verified with Amazon SES, or from a domain that has
been verified with Amazon SES. For information about verifying
identities, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

If you are sending on behalf of another user and have been permitted to
do so by a sending authorization policy, then you must also specify the
C<SourceArn> parameter. For more information about sending
authorization, see the Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

Amazon SES does not support the SMTPUTF8 extension, as described in
RFC6531 (https://tools.ietf.org/html/rfc6531). For this reason, the
I<local part> of a source email address (the part of the email address
that precedes the @ sign) may only contain 7-bit ASCII characters
(https://en.wikipedia.org/wiki/Email_address#Local-part). If the
I<domain part> of an address (the part after the @ sign) contains
non-ASCII characters, they must be encoded using Punycode, as described
in RFC3492 (https://tools.ietf.org/html/rfc3492.html). The sender name
(also known as the I<friendly name>) may contain non-ASCII characters.
These characters must be encoded using MIME encoded-word syntax, as
described in RFC 2047 (https://tools.ietf.org/html/rfc2047). MIME
encoded-word syntax uses the following form:
C<=?charset?encoding?encoded-text?=>.



=head2 SourceArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to send for the email address specified in the
C<Source> parameter.

For example, if the owner of C<example.com> (which has ARN
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>) attaches a
policy to it that authorizes you to send from C<user@example.com>, then
you would specify the C<SourceArn> to be
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>, and the
C<Source> to be C<user@example.com>.

For more information about sending authorization, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).



=head2 Tags => ArrayRef[L<Paws::SES::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using C<SendEmail>. Tags correspond to characteristics of
the email that you define, so that you can publish email sending
events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendEmail in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


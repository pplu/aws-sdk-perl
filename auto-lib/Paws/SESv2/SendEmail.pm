
package Paws::SESv2::SendEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Paws::SESv2::EmailContent', required => 1);
  has Destination => (is => 'ro', isa => 'Paws::SESv2::Destination');
  has EmailTags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MessageTag]');
  has FeedbackForwardingEmailAddress => (is => 'ro', isa => 'Str');
  has FeedbackForwardingEmailAddressIdentityArn => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has FromEmailAddressIdentityArn => (is => 'ro', isa => 'Str');
  has ListManagementOptions => (is => 'ro', isa => 'Paws::SESv2::ListManagementOptions');
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/outbound-emails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::SendEmailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendEmail - Arguments for method SendEmail on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendEmail on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method SendEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendEmail.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $SendEmailResponse = $email->SendEmail(
      Content => {
        Raw => {
          Data => 'BlobRawMessageData',

        },    # OPTIONAL
        Simple => {
          Body => {
            Html => {
              Data    => 'MyMessageData',
              Charset => 'MyCharset',       # OPTIONAL
            },    # OPTIONAL
            Text => {
              Data    => 'MyMessageData',
              Charset => 'MyCharset',       # OPTIONAL
            },    # OPTIONAL
          },
          Subject => {
            Data    => 'MyMessageData',
            Charset => 'MyCharset',       # OPTIONAL
          },    # OPTIONAL

        },    # OPTIONAL
        Template => {
          TemplateArn  => 'MyAmazonResourceName',    # OPTIONAL
          TemplateData => 'MyEmailTemplateData',     # max: 262144; OPTIONAL
          TemplateName => 'MyEmailTemplateName',     # min: 1; OPTIONAL
        },    # OPTIONAL
      },
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      Destination          => {
        BccAddresses => [ 'MyEmailAddress', ... ],         # OPTIONAL
        CcAddresses  => [ 'MyEmailAddress', ... ],         # OPTIONAL
        ToAddresses  => [ 'MyEmailAddress', ... ],         # OPTIONAL
      },    # OPTIONAL
      EmailTags => [
        {
          Name  => 'MyMessageTagName',
          Value => 'MyMessageTagValue',

        },
        ...
      ],    # OPTIONAL
      FeedbackForwardingEmailAddress            => 'MyEmailAddress',  # OPTIONAL
      FeedbackForwardingEmailAddressIdentityArn =>
        'MyAmazonResourceName',                                       # OPTIONAL
      FromEmailAddress            => 'MyEmailAddress',                # OPTIONAL
      FromEmailAddressIdentityArn => 'MyAmazonResourceName',          # OPTIONAL
      ListManagementOptions       => {
        ContactListName => 'MyContactListName',
        TopicName       => 'MyTopicName',                             # OPTIONAL
      },    # OPTIONAL
      ReplyToAddresses => [ 'MyEmailAddress', ... ],    # OPTIONAL
    );

    # Results:
    my $MessageId = $SendEmailResponse->MessageId;

    # Returns a L<Paws::SESv2::SendEmailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SendEmail>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set that you want to use when sending the
email.



=head2 B<REQUIRED> Content => L<Paws::SESv2::EmailContent>

An object that contains the body of the message. You can send either a
Simple message Raw message or a template Message.



=head2 Destination => L<Paws::SESv2::Destination>

An object that contains the recipients of the email message.



=head2 EmailTags => ArrayRef[L<Paws::SESv2::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using the C<SendEmail> operation. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.



=head2 FeedbackForwardingEmailAddress => Str

The address that you want bounce and complaint notifications to be sent
to.



=head2 FeedbackForwardingEmailAddressIdentityArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to use the email address specified in the
C<FeedbackForwardingEmailAddress> parameter.

For example, if the owner of example.com (which has ARN
arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
policy to it that authorizes you to use feedback@example.com, then you
would specify the C<FeedbackForwardingEmailAddressIdentityArn> to be
arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
C<FeedbackForwardingEmailAddress> to be feedback@example.com.

For more information about sending authorization, see the Amazon SES
Developer Guide
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).



=head2 FromEmailAddress => Str

The email address that you want to use as the "From" address for the
email. The address that you specify has to be verified.



=head2 FromEmailAddressIdentityArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to use the email address specified in the
C<FromEmailAddress> parameter.

For example, if the owner of example.com (which has ARN
arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
policy to it that authorizes you to use sender@example.com, then you
would specify the C<FromEmailAddressIdentityArn> to be
arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
C<FromEmailAddress> to be sender@example.com.

For more information about sending authorization, see the Amazon SES
Developer Guide
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

For Raw emails, the C<FromEmailAddressIdentityArn> value overrides the
X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email
message content.



=head2 ListManagementOptions => L<Paws::SESv2::ListManagementOptions>

An object used to specify a list or topic to which an email belongs,
which will be used when a contact chooses to unsubscribe.



=head2 ReplyToAddresses => ArrayRef[Str|Undef]

The "Reply-to" email addresses for the message. When the recipient
replies to the message, each Reply-to address receives the reply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendEmail in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


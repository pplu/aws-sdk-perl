
package Paws::SESv2::SendBulkEmail;
  use Moose;
  has BulkEmailEntries => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::BulkEmailEntry]', required => 1);
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DefaultContent => (is => 'ro', isa => 'Paws::SESv2::BulkEmailContent', required => 1);
  has DefaultEmailTags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MessageTag]');
  has FeedbackForwardingEmailAddress => (is => 'ro', isa => 'Str');
  has FeedbackForwardingEmailAddressIdentityArn => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has FromEmailAddressIdentityArn => (is => 'ro', isa => 'Str');
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendBulkEmail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/outbound-bulk-emails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::SendBulkEmailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendBulkEmail - Arguments for method SendBulkEmail on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendBulkEmail on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method SendBulkEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendBulkEmail.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $SendBulkEmailResponse = $email->SendBulkEmail(
      BulkEmailEntries => [
        {
          Destination => {
            BccAddresses => [ 'MyEmailAddress', ... ],    # OPTIONAL
            CcAddresses  => [ 'MyEmailAddress', ... ],    # OPTIONAL
            ToAddresses  => [ 'MyEmailAddress', ... ],    # OPTIONAL
          },
          ReplacementEmailContent => {
            ReplacementTemplate => {
              ReplacementTemplateData =>
                'MyEmailTemplateData',    # max: 262144; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ReplacementTags => [
            {
              Name  => 'MyMessageTagName',
              Value => 'MyMessageTagValue',

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],
      DefaultContent => {
        Template => {
          TemplateArn  => 'MyAmazonResourceName',    # OPTIONAL
          TemplateData => 'MyEmailTemplateData',     # max: 262144; OPTIONAL
          TemplateName => 'MyEmailTemplateName',     # min: 1; OPTIONAL
        },    # OPTIONAL
      },
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      DefaultEmailTags     => [
        {
          Name  => 'MyMessageTagName',
          Value => 'MyMessageTagValue',

        },
        ...
      ],                                                   # OPTIONAL
      FeedbackForwardingEmailAddress            => 'MyEmailAddress',  # OPTIONAL
      FeedbackForwardingEmailAddressIdentityArn =>
        'MyAmazonResourceName',                                       # OPTIONAL
      FromEmailAddress            => 'MyEmailAddress',                # OPTIONAL
      FromEmailAddressIdentityArn => 'MyAmazonResourceName',          # OPTIONAL
      ReplyToAddresses            => [ 'MyEmailAddress', ... ],       # OPTIONAL
    );

    # Results:
    my $BulkEmailEntryResults = $SendBulkEmailResponse->BulkEmailEntryResults;

    # Returns a L<Paws::SESv2::SendBulkEmailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SendBulkEmail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BulkEmailEntries => ArrayRef[L<Paws::SESv2::BulkEmailEntry>]

The list of bulk email entry objects.



=head2 ConfigurationSetName => Str

The name of the configuration set that you want to use when sending the
email.



=head2 B<REQUIRED> DefaultContent => L<Paws::SESv2::BulkEmailContent>

An object that contains the body of the message. You can specify a
template message.



=head2 DefaultEmailTags => ArrayRef[L<Paws::SESv2::MessageTag>]

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



=head2 ReplyToAddresses => ArrayRef[Str|Undef]

The "Reply-to" email addresses for the message. When the recipient
replies to the message, each Reply-to address receives the reply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendBulkEmail in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


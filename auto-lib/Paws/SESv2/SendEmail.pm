
package Paws::SESv2::SendEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Paws::SESv2::EmailContent', required => 1);
  has Destination => (is => 'ro', isa => 'Paws::SESv2::Destination', required => 1);
  has EmailTags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MessageTag]');
  has FeedbackForwardingEmailAddress => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
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
          TemplateArn  => 'MyTemplateArn',     # OPTIONAL
          TemplateData => 'MyTemplateData',    # max: 262144; OPTIONAL
        },    # OPTIONAL
      },
      Destination => {
        BccAddresses => [ 'MyEmailAddress', ... ],    # OPTIONAL
        CcAddresses  => [ 'MyEmailAddress', ... ],    # OPTIONAL
        ToAddresses  => [ 'MyEmailAddress', ... ],    # OPTIONAL
      },
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      EmailTags            => [
        {
          Name  => 'MyMessageTagName',
          Value => 'MyMessageTagValue',

        },
        ...
      ],                                                   # OPTIONAL
      FeedbackForwardingEmailAddress => 'MyEmailAddress',             # OPTIONAL
      FromEmailAddress               => 'MyEmailAddress',             # OPTIONAL
      ReplyToAddresses               => [ 'MyEmailAddress', ... ],    # OPTIONAL
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
Simple message or a Raw message.



=head2 B<REQUIRED> Destination => L<Paws::SESv2::Destination>

An object that contains the recipients of the email message.



=head2 EmailTags => ArrayRef[L<Paws::SESv2::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using the C<SendEmail> operation. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.



=head2 FeedbackForwardingEmailAddress => Str

The address that you want bounce and complaint notifications to be sent
to.



=head2 FromEmailAddress => Str

The email address that you want to use as the "From" address for the
email. The address that you specify has to be verified.



=head2 ReplyToAddresses => ArrayRef[Str|Undef]

The "Reply-to" email addresses for the message. When the recipient
replies to the message, each Reply-to address receives the reply.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendEmail in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::SES::SendTemplatedEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::SES::Destination', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has ReturnPathArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has SourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SES::MessageTag]');
  has Template => (is => 'ro', isa => 'Str', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str');
  has TemplateData => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendTemplatedEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SendTemplatedEmailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendTemplatedEmailResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendTemplatedEmail - Arguments for method SendTemplatedEmail on Paws::SES

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendTemplatedEmail on the 
Amazon Simple Email Service service. Use the attributes of this class
as arguments to method SendTemplatedEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendTemplatedEmail.

As an example:

  $service_obj->SendTemplatedEmail(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set to use when you send an email using
C<SendTemplatedEmail>.



=head2 B<REQUIRED> Destination => L<Paws::SES::Destination>

The destination for this email, composed of To:, CC:, and BCC: fields.
A Destination can include up to 50 recipients across these three
fields.



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
Developer Guide.



=head2 B<REQUIRED> Source => Str

The email address that is sending the email. This email address must be
either individually verified with Amazon SES, or from a domain that has
been verified with Amazon SES. For information about verifying
identities, see the Amazon SES Developer Guide.

If you are sending on behalf of another user and have been permitted to
do so by a sending authorization policy, then you must also specify the
C<SourceArn> parameter. For more information about sending
authorization, see the Amazon SES Developer Guide.

In all cases, the email address must be 7-bit ASCII. If the text must
contain any other characters, then you must use MIME encoded-word
syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax
uses the following form: C<=?charset?encoding?encoded-text?=>. For more
information, see RFC 2047.



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
Developer Guide.



=head2 Tags => ArrayRef[L<Paws::SES::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using C<SendTemplatedEmail>. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.



=head2 B<REQUIRED> Template => Str

The template to use when sending this email.



=head2 TemplateArn => Str

The ARN of the template to use when sending this email.



=head2 B<REQUIRED> TemplateData => Str

A list of replacement values to apply to the template. This parameter
is a JSON object, typically consisting of key-value pairs in which the
keys correspond to replacement tags in the email template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendTemplatedEmail in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut


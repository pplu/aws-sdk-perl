package Paws::CognitoIdp::EmailConfigurationType;
  use Moose;
  has EmailSendingAccount => (is => 'ro', isa => 'Str');
  has ReplyToEmailAddress => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::EmailConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::EmailConfigurationType object:

  $service_obj->Method(Att1 => { EmailSendingAccount => $value, ..., SourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::EmailConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->EmailSendingAccount

=head1 DESCRIPTION

The email configuration type.

=head1 ATTRIBUTES


=head2 EmailSendingAccount => Str

  Specifies whether Amazon Cognito emails your users by using its
built-in email functionality or your Amazon SES email configuration.
Specify one of the following values:

=over

=item COGNITO_DEFAULT

When Amazon Cognito emails your users, it uses its built-in email
functionality. When you use the default option, Amazon Cognito allows
only a limited number of emails each day for your user pool. For
typical production environments, the default email limit is below the
required delivery volume. To achieve a higher delivery volume, specify
DEVELOPER to use your Amazon SES email configuration.

To look up the email delivery limit for the default option, see Limits
in Amazon Cognito
(https://docs.aws.amazon.com/cognito/latest/developerguide/limits.html)
in the I<Amazon Cognito Developer Guide>.

The default FROM address is no-reply@verificationemail.com. To
customize the FROM address, provide the ARN of an Amazon SES verified
email address for the C<SourceArn> parameter.

=item DEVELOPER

When Amazon Cognito emails your users, it uses your Amazon SES
configuration. Amazon Cognito calls Amazon SES on your behalf to send
email from your verified email address. When you use this option, the
email delivery limits are the same limits that apply to your Amazon SES
verified email address in your AWS account.

If you use this option, you must provide the ARN of an Amazon SES
verified email address for the C<SourceArn> parameter.

Before Amazon Cognito can email your users, it requires additional
permissions to call Amazon SES on your behalf. When you update your
user pool with this option, Amazon Cognito creates a I<service-linked
role>, which is a type of IAM role, in your AWS account. This role
contains the permissions that allow Amazon Cognito to access Amazon SES
and send email messages with your address. For more information about
the service-linked role that Amazon Cognito creates, see Using
Service-Linked Roles for Amazon Cognito
(https://docs.aws.amazon.com/cognito/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Cognito Developer Guide>.

=back



=head2 ReplyToEmailAddress => Str

  The destination to which the receiver of the email should reply to.


=head2 SourceArn => Str

  The Amazon Resource Name (ARN) of a verified email address in Amazon
SES. This email address is used in one of the following ways, depending
on the value that you specify for the C<EmailSendingAccount> parameter:

=over

=item *

If you specify C<COGNITO_DEFAULT>, Amazon Cognito uses this address as
the custom FROM address when it emails your users by using its built-in
email account.

=item *

If you specify C<DEVELOPER>, Amazon Cognito emails your users with this
address by calling Amazon SES on your behalf.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::CognitoIdp::VerificationMessageTemplateType;
  use Moose;
  has DefaultEmailOption => (is => 'ro', isa => 'Str');
  has EmailMessage => (is => 'ro', isa => 'Str');
  has EmailMessageByLink => (is => 'ro', isa => 'Str');
  has EmailSubject => (is => 'ro', isa => 'Str');
  has EmailSubjectByLink => (is => 'ro', isa => 'Str');
  has SmsMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::VerificationMessageTemplateType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::VerificationMessageTemplateType object:

  $service_obj->Method(Att1 => { DefaultEmailOption => $value, ..., SmsMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::VerificationMessageTemplateType object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultEmailOption

=head1 DESCRIPTION

The template for verification messages.

=head1 ATTRIBUTES


=head2 DefaultEmailOption => Str

  The default email option.


=head2 EmailMessage => Str

  The email message template.


=head2 EmailMessageByLink => Str

  The email message template for sending a confirmation link to the user.


=head2 EmailSubject => Str

  The subject line for the email message template.


=head2 EmailSubjectByLink => Str

  The subject line for the email message template for sending a
confirmation link to the user.


=head2 SmsMessage => Str

  The SMS message template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


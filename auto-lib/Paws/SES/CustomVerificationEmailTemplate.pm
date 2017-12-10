package Paws::SES::CustomVerificationEmailTemplate;
  use Moose;
  has FailureRedirectionURL => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has SuccessRedirectionURL => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has TemplateSubject => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CustomVerificationEmailTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::CustomVerificationEmailTemplate object:

  $service_obj->Method(Att1 => { FailureRedirectionURL => $value, ..., TemplateSubject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::CustomVerificationEmailTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureRedirectionURL

=head1 DESCRIPTION

Contains information about a custom verification email template.

=head1 ATTRIBUTES


=head2 FailureRedirectionURL => Str

  The URL that the recipient of the verification email is sent to if his
or her address is not successfully verified.


=head2 FromEmailAddress => Str

  The email address that the custom verification email is sent from.


=head2 SuccessRedirectionURL => Str

  The URL that the recipient of the verification email is sent to if his
or her address is successfully verified.


=head2 TemplateName => Str

  The name of the custom verification email template.


=head2 TemplateSubject => Str

  The subject line of the custom verification email.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


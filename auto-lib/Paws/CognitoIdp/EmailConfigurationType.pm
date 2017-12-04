package Paws::CognitoIdp::EmailConfigurationType;
  use Moose;
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

  $service_obj->Method(Att1 => { ReplyToEmailAddress => $value, ..., SourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::EmailConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplyToEmailAddress

=head1 DESCRIPTION

The email configuration type.

=head1 ATTRIBUTES


=head2 ReplyToEmailAddress => Str

  The destination to which the receiver of the email should reply to.


=head2 SourceArn => Str

  The Amazon Resource Name (ARN) of the email source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


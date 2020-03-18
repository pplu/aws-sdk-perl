package Paws::Chime::Credential;
  use Moose;
  has Password => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Credential

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Credential object:

  $service_obj->Method(Att1 => { Password => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Credential object:

  $result = $service_obj->Method(...);
  $result->Att1->Password

=head1 DESCRIPTION

The SIP credentials used to authenticate requests to your Amazon Chime
Voice Connector.

=head1 ATTRIBUTES


=head2 Password => Str

  The RFC2617 compliant password associated with the SIP credentials, in
US-ASCII format.


=head2 Username => Str

  The RFC2617 compliant user name associated with the SIP credentials, in
US-ASCII format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


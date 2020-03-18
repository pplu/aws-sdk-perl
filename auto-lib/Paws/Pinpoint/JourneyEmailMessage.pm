package Paws::Pinpoint::JourneyEmailMessage;
  use Moose;
  has FromAddress => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneyEmailMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneyEmailMessage object:

  $service_obj->Method(Att1 => { FromAddress => $value, ..., FromAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneyEmailMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->FromAddress

=head1 DESCRIPTION

Specifies the "From" address for an email message that's sent to
participants in a journey.

=head1 ATTRIBUTES


=head2 FromAddress => Str

  The verified email address to send the email message from. The default
address is the FromAddress specified for the email channel for the
application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


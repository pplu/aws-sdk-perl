package Paws::MediaLive::InputDestinationRequest;
  use Moose;
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputDestinationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputDestinationRequest object:

  $service_obj->Method(Att1 => { StreamName => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputDestinationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->StreamName

=head1 DESCRIPTION

Endpoint settings for a PUSH type input.

=head1 ATTRIBUTES


=head2 StreamName => Str

  A unique name for the location the RTMP stream is being pushed to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


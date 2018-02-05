package Paws::MediaLive::InputDestination;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str', request_name => 'ip', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Str', request_name => 'port', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputDestination object:

  $service_obj->Method(Att1 => { Ip => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

The settings for a PUSH type input.

=head1 ATTRIBUTES


=head2 Ip => Str

  The system-generated static IP address of endpoint. It remains fixed
for the lifetime of the input.


=head2 Port => Str

  The port number for the input.


=head2 Url => Str

  This represents the endpoint that the customer stream will be pushed
to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


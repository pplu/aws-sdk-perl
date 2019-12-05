package Paws::KinesisVideoSignaling::IceServer;
  use Moose;
  has Password => (is => 'ro', isa => 'Str');
  has Ttl => (is => 'ro', isa => 'Int');
  has Uris => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoSignaling::IceServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoSignaling::IceServer object:

  $service_obj->Method(Att1 => { Password => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoSignaling::IceServer object:

  $result = $service_obj->Method(...);
  $result->Att1->Password

=head1 DESCRIPTION

A structure for the ICE server connection data.

=head1 ATTRIBUTES


=head2 Password => Str

  A password to login to the ICE server.


=head2 Ttl => Int

  The period of time, in seconds, during which the username and password
are valid.


=head2 Uris => ArrayRef[Str|Undef]

  An array of URIs, in the form specified in the
I-D.petithuguenin-behave-turn-uris
(https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03)
spec. These URIs provide the different addresses and/or protocols that
can be used to reach the TURN server.


=head2 Username => Str

  A username to login to the ICE server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoSignaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


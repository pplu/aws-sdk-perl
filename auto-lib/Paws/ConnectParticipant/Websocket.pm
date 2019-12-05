package Paws::ConnectParticipant::Websocket;
  use Moose;
  has ConnectionExpiry => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::Websocket

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectParticipant::Websocket object:

  $service_obj->Method(Att1 => { ConnectionExpiry => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectParticipant::Websocket object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionExpiry

=head1 DESCRIPTION

The websocket for the participant's connection.

=head1 ATTRIBUTES


=head2 ConnectionExpiry => Str

  The URL expiration timestamp in ISO date format.

It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
example, 2019-11-08T02:41:28.172Z.


=head2 Url => Str

  The URL of the websocket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


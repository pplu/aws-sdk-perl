package Paws::ConnectParticipant::ConnectionCredentials;
  use Moose;
  has ConnectionToken => (is => 'ro', isa => 'Str');
  has Expiry => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::ConnectionCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectParticipant::ConnectionCredentials object:

  $service_obj->Method(Att1 => { ConnectionToken => $value, ..., Expiry => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectParticipant::ConnectionCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionToken

=head1 DESCRIPTION

Connection credentials.

=head1 ATTRIBUTES


=head2 ConnectionToken => Str

  The connection token.


=head2 Expiry => Str

  The expiration of the token.

It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
example, 2019-11-08T02:41:28.172Z.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


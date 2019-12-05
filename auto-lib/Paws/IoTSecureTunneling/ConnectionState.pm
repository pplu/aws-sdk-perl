package Paws::IoTSecureTunneling::ConnectionState;
  use Moose;
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::ConnectionState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSecureTunneling::ConnectionState object:

  $service_obj->Method(Att1 => { LastUpdatedAt => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSecureTunneling::ConnectionState object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedAt

=head1 DESCRIPTION

The state of a connection.

=head1 ATTRIBUTES


=head2 LastUpdatedAt => Str

  The last time the connection status was updated.


=head2 Status => Str

  The connection status of the tunnel. Valid values are C<CONNECTED> and
C<DISCONNECTED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


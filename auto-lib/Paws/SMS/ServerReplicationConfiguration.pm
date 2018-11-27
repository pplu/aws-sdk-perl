package Paws::SMS::ServerReplicationConfiguration;
  use Moose;
  has Server => (is => 'ro', isa => 'Paws::SMS::Server', request_name => 'server', traits => ['NameInRequest']);
  has ServerReplicationParameters => (is => 'ro', isa => 'Paws::SMS::ServerReplicationParameters', request_name => 'serverReplicationParameters', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ServerReplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ServerReplicationConfiguration object:

  $service_obj->Method(Att1 => { Server => $value, ..., ServerReplicationParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ServerReplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Server

=head1 DESCRIPTION

Replication configuration of a server.

=head1 ATTRIBUTES


=head2 Server => L<Paws::SMS::Server>

  Identifier of the server this replication configuration is associated
with.


=head2 ServerReplicationParameters => L<Paws::SMS::ServerReplicationParameters>

  Parameters for replicating the server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


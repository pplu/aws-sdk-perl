package Paws::SMS::ServerGroupReplicationConfiguration;
  use Moose;
  has ServerGroupId => (is => 'ro', isa => 'Str', request_name => 'serverGroupId', traits => ['NameInRequest']);
  has ServerReplicationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerReplicationConfiguration]', request_name => 'serverReplicationConfigurations', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ServerGroupReplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ServerGroupReplicationConfiguration object:

  $service_obj->Method(Att1 => { ServerGroupId => $value, ..., ServerReplicationConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ServerGroupReplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ServerGroupId

=head1 DESCRIPTION

Replication configuration for a server group.

=head1 ATTRIBUTES


=head2 ServerGroupId => Str

  Identifier of the server group this replication configuration is
associated with.


=head2 ServerReplicationConfigurations => ArrayRef[L<Paws::SMS::ServerReplicationConfiguration>]

  Replication configuration for servers in the server group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


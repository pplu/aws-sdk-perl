# Generated from default/object.tt
package Paws::SMS::ServerReplicationConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::SMS::Types qw/SMS_Server SMS_ServerReplicationParameters/;
  has Server => (is => 'ro', isa => SMS_Server);
  has ServerReplicationParameters => (is => 'ro', isa => SMS_ServerReplicationParameters);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerReplicationParameters' => {
                                                  'class' => 'Paws::SMS::ServerReplicationParameters',
                                                  'type' => 'SMS_ServerReplicationParameters'
                                                },
               'Server' => {
                             'class' => 'Paws::SMS::Server',
                             'type' => 'SMS_Server'
                           }
             },
  'NameInRequest' => {
                       'Server' => 'server',
                       'ServerReplicationParameters' => 'serverReplicationParameters'
                     }
}
;
    return $Params_map;
  }


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


=head2 Server => SMS_Server

  Identifier of the server this replication configuration is associated
with.


=head2 ServerReplicationParameters => SMS_ServerReplicationParameters

  Parameters for replicating the server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


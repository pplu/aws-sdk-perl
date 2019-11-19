# Generated from default/object.tt
package Paws::SMS::ServerGroupReplicationConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ServerReplicationConfiguration/;
  has ServerGroupId => (is => 'ro', isa => Str);
  has ServerReplicationConfigurations => (is => 'ro', isa => ArrayRef[SMS_ServerReplicationConfiguration]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerGroupId' => {
                                    'type' => 'Str'
                                  },
               'ServerReplicationConfigurations' => {
                                                      'type' => 'ArrayRef[SMS_ServerReplicationConfiguration]',
                                                      'class' => 'Paws::SMS::ServerReplicationConfiguration'
                                                    }
             },
  'NameInRequest' => {
                       'ServerGroupId' => 'serverGroupId',
                       'ServerReplicationConfigurations' => 'serverReplicationConfigurations'
                     }
}
;
    return $Params_map;
  }


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


=head2 ServerReplicationConfigurations => ArrayRef[SMS_ServerReplicationConfiguration]

  Replication configuration for servers in the server group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


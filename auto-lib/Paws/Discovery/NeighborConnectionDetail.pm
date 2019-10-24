# Generated from default/object.tt
package Paws::Discovery::NeighborConnectionDetail;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Discovery::Types qw//;
  has ConnectionsCount => (is => 'ro', isa => Int, required => 1);
  has DestinationPort => (is => 'ro', isa => Int);
  has DestinationServerId => (is => 'ro', isa => Str, required => 1);
  has SourceServerId => (is => 'ro', isa => Str, required => 1);
  has TransportProtocol => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationPort' => {
                                      'type' => 'Int'
                                    },
               'TransportProtocol' => {
                                        'type' => 'Str'
                                      },
               'SourceServerId' => {
                                     'type' => 'Str'
                                   },
               'ConnectionsCount' => {
                                       'type' => 'Int'
                                     },
               'DestinationServerId' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'DestinationPort' => 'destinationPort',
                       'TransportProtocol' => 'transportProtocol',
                       'SourceServerId' => 'sourceServerId',
                       'ConnectionsCount' => 'connectionsCount',
                       'DestinationServerId' => 'destinationServerId'
                     },
  'IsRequired' => {
                    'SourceServerId' => 1,
                    'ConnectionsCount' => 1,
                    'DestinationServerId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::NeighborConnectionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::NeighborConnectionDetail object:

  $service_obj->Method(Att1 => { ConnectionsCount => $value, ..., TransportProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::NeighborConnectionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionsCount

=head1 DESCRIPTION

Details about neighboring servers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionsCount => Int

  The number of open network connections with the neighboring server.


=head2 DestinationPort => Int

  The destination network port for the connection.


=head2 B<REQUIRED> DestinationServerId => Str

  The ID of the server that accepted the network connection.


=head2 B<REQUIRED> SourceServerId => Str

  The ID of the server that opened the network connection.


=head2 TransportProtocol => Str

  The network protocol used for the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


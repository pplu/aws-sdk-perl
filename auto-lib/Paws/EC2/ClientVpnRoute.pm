package Paws::EC2::ClientVpnRoute;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnRouteStatus/;
  has ClientVpnEndpointId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DestinationCidr => (is => 'ro', isa => Str);
  has Origin => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_ClientVpnRouteStatus);
  has TargetSubnet => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnRouteStatus',
                             'type' => 'EC2_ClientVpnRouteStatus'
                           },
               'ClientVpnEndpointId' => {
                                          'type' => 'Str'
                                        },
               'TargetSubnet' => {
                                   'type' => 'Str'
                                 },
               'Type' => {
                           'type' => 'Str'
                         },
               'Origin' => {
                             'type' => 'Str'
                           },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DestinationCidr' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'ClientVpnEndpointId' => 'clientVpnEndpointId',
                       'Status' => 'status',
                       'DestinationCidr' => 'destinationCidr',
                       'Description' => 'description',
                       'Type' => 'type',
                       'Origin' => 'origin',
                       'TargetSubnet' => 'targetSubnet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnRoute object:

  $service_obj->Method(Att1 => { ClientVpnEndpointId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientVpnEndpointId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint with which the route is associated.


=head2 Description => Str

  A brief description of the route.


=head2 DestinationCidr => Str

  The IPv4 address range, in CIDR notation, of the route destination.


=head2 Origin => Str

  Indicates how the route was associated with the Client VPN endpoint.
C<associate> indicates that the route was automatically added when the
target network was associated with the Client VPN endpoint.
C<add-route> indicates that the route was manually added using the
B<CreateClientVpnRoute> action.


=head2 Status => EC2_ClientVpnRouteStatus

  The current state of the route.


=head2 TargetSubnet => Str

  The ID of the subnet through which traffic is routed.


=head2 Type => Str

  The route type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

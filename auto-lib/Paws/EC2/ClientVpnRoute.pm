package Paws::EC2::ClientVpnRoute;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DestinationCidr => (is => 'ro', isa => 'Str', request_name => 'destinationCidr', traits => ['NameInRequest']);
  has Origin => (is => 'ro', isa => 'Str', request_name => 'origin', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnRouteStatus', request_name => 'status', traits => ['NameInRequest']);
  has TargetSubnet => (is => 'ro', isa => 'Str', request_name => 'targetSubnet', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
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


=head2 Status => L<Paws::EC2::ClientVpnRouteStatus>

  The current state of the route.


=head2 TargetSubnet => Str

  The ID of the subnet through which traffic is routed.


=head2 Type => Str

  B<The route type.>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

package Paws::NetworkManager::CustomerGatewayAssociation;
  use Moose;
  has CustomerGatewayArn => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has LinkId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CustomerGatewayAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::CustomerGatewayAssociation object:

  $service_obj->Method(Att1 => { CustomerGatewayArn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::CustomerGatewayAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerGatewayArn

=head1 DESCRIPTION

Describes the association between a customer gateway, a device, and a
link.

=head1 ATTRIBUTES


=head2 CustomerGatewayArn => Str

  The Amazon Resource Name (ARN) of the customer gateway.


=head2 DeviceId => Str

  The ID of the device.


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 LinkId => Str

  The ID of the link.


=head2 State => Str

  The association state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


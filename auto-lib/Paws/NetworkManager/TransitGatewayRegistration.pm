package Paws::NetworkManager::TransitGatewayRegistration;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayRegistrationStateReason');
  has TransitGatewayArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::TransitGatewayRegistration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::TransitGatewayRegistration object:

  $service_obj->Method(Att1 => { GlobalNetworkId => $value, ..., TransitGatewayArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::TransitGatewayRegistration object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalNetworkId

=head1 DESCRIPTION

Describes the registration of a transit gateway to a global network.

=head1 ATTRIBUTES


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 State => L<Paws::NetworkManager::TransitGatewayRegistrationStateReason>

  The state of the transit gateway registration.


=head2 TransitGatewayArn => Str

  The Amazon Resource Name (ARN) of the transit gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::StorageGateway::GatewayInfo;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GatewayId => (is => 'ro', isa => 'Str');
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayOperationalState => (is => 'ro', isa => 'Str');
  has GatewayType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::GatewayInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::GatewayInfo object:

  $service_obj->Method(Att1 => { GatewayARN => $value, ..., GatewayType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::GatewayInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->GatewayARN

=head1 DESCRIPTION

Describes a gateway object.

=head1 ATTRIBUTES


=head2 GatewayARN => Str

  The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
operation to return a list of gateways for your account and region.


=head2 GatewayId => Str

  The unique identifier assigned to your gateway during activation. This
ID becomes part of the gateway Amazon Resource Name (ARN), which you
use as input for other operations.


=head2 GatewayName => Str

  The name of the gateway.


=head2 GatewayOperationalState => Str

  The state of the gateway.

Valid Values: DISABLED or ACTIVE


=head2 GatewayType => Str

  The type of the gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


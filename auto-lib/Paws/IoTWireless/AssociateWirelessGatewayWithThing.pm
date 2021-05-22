
package Paws::IoTWireless::AssociateWirelessGatewayWithThing;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has ThingArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWirelessGatewayWithThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateways/{Id}/thing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::AssociateWirelessGatewayWithThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateWirelessGatewayWithThing - Arguments for method AssociateWirelessGatewayWithThing on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWirelessGatewayWithThing on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method AssociateWirelessGatewayWithThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWirelessGatewayWithThing.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $AssociateWirelessGatewayWithThingResponse =
      $api . iotwireless->AssociateWirelessGatewayWithThing(
      Id       => 'MyWirelessGatewayId',
      ThingArn => 'MyThingArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/AssociateWirelessGatewayWithThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the resource to update.



=head2 B<REQUIRED> ThingArn => Str

The ARN of the thing to associate with the wireless gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWirelessGatewayWithThing in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


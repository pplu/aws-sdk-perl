
package Paws::IoTWireless::CreateWirelessGatewayTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has WirelessGatewayTaskDefinitionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWirelessGatewayTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateways/{Id}/tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateWirelessGatewayTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateWirelessGatewayTask - Arguments for method CreateWirelessGatewayTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWirelessGatewayTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateWirelessGatewayTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWirelessGatewayTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateWirelessGatewayTaskResponse =
      $api . iotwireless->CreateWirelessGatewayTask(
      Id                              => 'MyWirelessGatewayId',
      WirelessGatewayTaskDefinitionId => 'MyWirelessGatewayTaskDefinitionId',

      );

    # Results:
    my $Status = $CreateWirelessGatewayTaskResponse->Status;
    my $WirelessGatewayTaskDefinitionId =
      $CreateWirelessGatewayTaskResponse->WirelessGatewayTaskDefinitionId;

    # Returns a L<Paws::IoTWireless::CreateWirelessGatewayTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateWirelessGatewayTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the resource to update.



=head2 B<REQUIRED> WirelessGatewayTaskDefinitionId => Str

The ID of the WirelessGatewayTaskDefinition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWirelessGatewayTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


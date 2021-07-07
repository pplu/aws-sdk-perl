
package Paws::IoTWireless::CreateWirelessGatewayTaskDefinition;
  use Moose;
  has AutoCreateTasks => (is => 'ro', isa => 'Bool', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');
  has Update => (is => 'ro', isa => 'Paws::IoTWireless::UpdateWirelessGatewayTaskCreate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWirelessGatewayTaskDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateway-task-definitions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateWirelessGatewayTaskDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateWirelessGatewayTaskDefinition - Arguments for method CreateWirelessGatewayTaskDefinition on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWirelessGatewayTaskDefinition on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateWirelessGatewayTaskDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWirelessGatewayTaskDefinition.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateWirelessGatewayTaskDefinitionResponse =
      $api . iotwireless->CreateWirelessGatewayTaskDefinition(
      AutoCreateTasks    => 1,
      ClientRequestToken => 'MyClientRequestToken',         # OPTIONAL
      Name               => 'MyWirelessGatewayTaskName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Update => {
        LoRaWAN => {
          CurrentVersion => {
            Model          => 'MyModel',           # min: 1, max: 4096; OPTIONAL
            PackageVersion => 'MyPackageVersion',  # min: 1, max: 32; OPTIONAL
            Station        => 'MyStation',         # min: 1, max: 4096; OPTIONAL
          },    # OPTIONAL
          SigKeyCrc       => 1,    # min: 1, max: 4294967295; OPTIONAL
          UpdateSignature => 'MyUpdateSignature',  # min: 1, max: 4096; OPTIONAL
          UpdateVersion   => {
            Model          => 'MyModel',           # min: 1, max: 4096; OPTIONAL
            PackageVersion => 'MyPackageVersion',  # min: 1, max: 32; OPTIONAL
            Station        => 'MyStation',         # min: 1, max: 4096; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        UpdateDataRole   => 'MyUpdateDataSource',  # min: 1, max: 4096; OPTIONAL
        UpdateDataSource => 'MyUpdateDataSource',  # min: 1, max: 4096; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateWirelessGatewayTaskDefinitionResponse->Arn;
    my $Id  = $CreateWirelessGatewayTaskDefinitionResponse->Id;

# Returns a L<Paws::IoTWireless::CreateWirelessGatewayTaskDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateWirelessGatewayTaskDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoCreateTasks => Bool

Whether to automatically create tasks using this task definition for
all gateways with the specified current version. If C<false>, the task
must me created by calling C<CreateWirelessGatewayTask>.



=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 Name => Str

The name of the new resource.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the specified resource. Tags are metadata that
you can use to manage a resource.



=head2 Update => L<Paws::IoTWireless::UpdateWirelessGatewayTaskCreate>

Information about the gateways to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWirelessGatewayTaskDefinition in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


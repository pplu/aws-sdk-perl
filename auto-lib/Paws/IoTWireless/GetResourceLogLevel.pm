
package Paws::IoTWireless::GetResourceLogLevel;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceLogLevel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/log-levels/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetResourceLogLevelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourceLogLevel - Arguments for method GetResourceLogLevel on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceLogLevel on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetResourceLogLevel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceLogLevel.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetResourceLogLevelResponse = $api . iotwireless->GetResourceLogLevel(
      ResourceIdentifier => 'MyResourceIdentifier',
      ResourceType       => 'MyResourceType',

    );

    # Results:
    my $LogLevel = $GetResourceLogLevelResponse->LogLevel;

    # Returns a L<Paws::IoTWireless::GetResourceLogLevelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetResourceLogLevel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str





=head2 B<REQUIRED> ResourceType => Str

The type of the resource, currently support WirelessDevice and
WirelessGateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceLogLevel in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


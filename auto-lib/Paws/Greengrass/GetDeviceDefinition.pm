
package Paws::Greengrass::GetDeviceDefinition;
  use Moose;
  has DeviceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetDeviceDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeviceDefinition - Arguments for method GetDeviceDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetDeviceDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetDeviceDefinitionResponse = $greengrass->GetDeviceDefinition(
      DeviceDefinitionId => 'My__string',

    );

    # Results:
    my $Arn               = $GetDeviceDefinitionResponse->Arn;
    my $CreationTimestamp = $GetDeviceDefinitionResponse->CreationTimestamp;
    my $Id                = $GetDeviceDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $GetDeviceDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $GetDeviceDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $GetDeviceDefinitionResponse->LatestVersionArn;
    my $Name             = $GetDeviceDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::GetDeviceDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetDeviceDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceDefinitionId => Str

The ID of the device definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


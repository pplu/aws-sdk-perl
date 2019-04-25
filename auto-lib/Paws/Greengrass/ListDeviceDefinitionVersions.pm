
package Paws::Greengrass::ListDeviceDefinitionVersions;
  use Moose;
  has DeviceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceDefinitionVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListDeviceDefinitionVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListDeviceDefinitionVersions - Arguments for method ListDeviceDefinitionVersions on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceDefinitionVersions on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method ListDeviceDefinitionVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceDefinitionVersions.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $ListDeviceDefinitionVersionsResponse =
      $greengrass->ListDeviceDefinitionVersions(
      DeviceDefinitionId => 'My__string',
      MaxResults         => 'My__string',    # OPTIONAL
      NextToken          => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListDeviceDefinitionVersionsResponse->NextToken;
    my $Versions  = $ListDeviceDefinitionVersionsResponse->Versions;

   # Returns a L<Paws::Greengrass::ListDeviceDefinitionVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListDeviceDefinitionVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceDefinitionId => Str

The ID of the device definition.



=head2 MaxResults => Str

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceDefinitionVersions in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


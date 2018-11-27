
package Paws::Greengrass::GetConnectorDefinition;
  use Moose;
  has ConnectorDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnectorDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/connectors/{ConnectorDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetConnectorDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetConnectorDefinition - Arguments for method GetConnectorDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnectorDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetConnectorDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnectorDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetConnectorDefinitionResponse = $greengrass->GetConnectorDefinition(
      ConnectorDefinitionId => 'My__string',

    );

    # Results:
    my $Arn               = $GetConnectorDefinitionResponse->Arn;
    my $CreationTimestamp = $GetConnectorDefinitionResponse->CreationTimestamp;
    my $Id                = $GetConnectorDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $GetConnectorDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $GetConnectorDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $GetConnectorDefinitionResponse->LatestVersionArn;
    my $Name             = $GetConnectorDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::GetConnectorDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetConnectorDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorDefinitionId => Str

The ID of the connector definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnectorDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


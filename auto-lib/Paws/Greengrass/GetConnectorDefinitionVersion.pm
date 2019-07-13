
package Paws::Greengrass::GetConnectorDefinitionVersion;
  use Moose;
  has ConnectorDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorDefinitionId', required => 1);
  has ConnectorDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorDefinitionVersionId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnectorDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetConnectorDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetConnectorDefinitionVersion - Arguments for method GetConnectorDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnectorDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetConnectorDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnectorDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetConnectorDefinitionVersionResponse =
      $greengrass->GetConnectorDefinitionVersion(
      ConnectorDefinitionId        => 'My__string',
      ConnectorDefinitionVersionId => 'My__string',
      NextToken                    => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $GetConnectorDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetConnectorDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetConnectorDefinitionVersionResponse->Definition;
    my $Id         = $GetConnectorDefinitionVersionResponse->Id;
    my $NextToken  = $GetConnectorDefinitionVersionResponse->NextToken;
    my $Version    = $GetConnectorDefinitionVersionResponse->Version;

  # Returns a L<Paws::Greengrass::GetConnectorDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetConnectorDefinitionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorDefinitionId => Str

The ID of the connector definition.



=head2 B<REQUIRED> ConnectorDefinitionVersionId => Str

The ID of the connector definition version.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnectorDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


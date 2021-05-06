
package Paws::Greengrass::CreateConnectorDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ConnectorDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorDefinitionId', required => 1);
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Connector]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectorDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/connectors/{ConnectorDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateConnectorDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateConnectorDefinitionVersion - Arguments for method CreateConnectorDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectorDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateConnectorDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectorDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateConnectorDefinitionVersionResponse =
      $greengrass->CreateConnectorDefinitionVersion(
      ConnectorDefinitionId => 'My__string',
      AmznClientToken       => 'My__string',    # OPTIONAL
      Connectors            => [
        {
          ConnectorArn => 'My__string',
          Id           => 'My__string',
          Parameters   => { 'My__string' => 'My__string', },    # OPTIONAL
        },
        ...
      ],                                                        # OPTIONAL
      );

    # Results:
    my $Arn = $CreateConnectorDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateConnectorDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateConnectorDefinitionVersionResponse->Id;
    my $Version = $CreateConnectorDefinitionVersionResponse->Version;

# Returns a L<Paws::Greengrass::CreateConnectorDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateConnectorDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> ConnectorDefinitionId => Str

The ID of the connector definition.



=head2 Connectors => ArrayRef[L<Paws::Greengrass::Connector>]

A list of references to connectors in this version, with their
corresponding configuration settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectorDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


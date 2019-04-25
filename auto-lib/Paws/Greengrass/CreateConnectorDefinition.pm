
package Paws::Greengrass::CreateConnectorDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::ConnectorDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectorDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateConnectorDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateConnectorDefinition - Arguments for method CreateConnectorDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectorDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateConnectorDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectorDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateConnectorDefinitionResponse =
      $greengrass->CreateConnectorDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Connectors => [
          {
            ConnectorArn => 'My__string',
            Id           => 'My__string',
            Parameters   => { 'My__string' => 'My__string', },    # OPTIONAL
          },
          ...
        ],                                                        # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateConnectorDefinitionResponse->Arn;
    my $CreationTimestamp =
      $CreateConnectorDefinitionResponse->CreationTimestamp;
    my $Id = $CreateConnectorDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateConnectorDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateConnectorDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateConnectorDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateConnectorDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateConnectorDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateConnectorDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::ConnectorDefinitionVersion>

Information about the initial version of the connector definition.



=head2 Name => Str

The name of the connector definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectorDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


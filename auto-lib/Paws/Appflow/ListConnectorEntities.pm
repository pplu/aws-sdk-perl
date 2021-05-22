
package Paws::Appflow::ListConnectorEntities;
  use Moose;
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName');
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType');
  has EntitiesPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entitiesPath');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectorEntities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-connector-entities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::ListConnectorEntitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListConnectorEntities - Arguments for method ListConnectorEntities on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectorEntities on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method ListConnectorEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectorEntities.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $ListConnectorEntitiesResponse = $appflow->ListConnectorEntities(
      ConnectorProfileName => 'MyConnectorProfileName',    # OPTIONAL
      ConnectorType        => 'Salesforce',                # OPTIONAL
      EntitiesPath         => 'MyEntitiesPath',            # OPTIONAL
    );

    # Results:
    my $ConnectorEntityMap = $ListConnectorEntitiesResponse->ConnectorEntityMap;

    # Returns a L<Paws::Appflow::ListConnectorEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/ListConnectorEntities>

=head1 ATTRIBUTES


=head2 ConnectorProfileName => Str

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in the AWS account, and is used to query the
downstream connector.



=head2 ConnectorType => Str

The type of connector, such as Salesforce, Amplitude, and so on.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">

=head2 EntitiesPath => Str

This optional parameter is specific to connector implementation. Some
connectors support multiple levels or categories of entities. You can
find out the list of roots for such providers by sending a request
without the C<entitiesPath> parameter. If the connector supports
entities at different roots, this initial request returns the list of
roots. Otherwise, this request returns all entities supported by the
provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectorEntities in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


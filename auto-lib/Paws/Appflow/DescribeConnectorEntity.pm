
package Paws::Appflow::DescribeConnectorEntity;
  use Moose;
  has ConnectorEntityName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorEntityName', required => 1);
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName');
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectorEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-connector-entity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DescribeConnectorEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorEntity - Arguments for method DescribeConnectorEntity on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectorEntity on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DescribeConnectorEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectorEntity.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DescribeConnectorEntityResponse = $appflow->DescribeConnectorEntity(
      ConnectorEntityName  => 'MyName',
      ConnectorProfileName => 'MyConnectorProfileName',    # OPTIONAL
      ConnectorType        => 'Salesforce',                # OPTIONAL
    );

    # Results:
    my $ConnectorEntityFields =
      $DescribeConnectorEntityResponse->ConnectorEntityFields;

    # Returns a L<Paws::Appflow::DescribeConnectorEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DescribeConnectorEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorEntityName => Str

The entity name for that connector.



=head2 ConnectorProfileName => Str

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in the AWS account.



=head2 ConnectorType => Str

The type of connector application, such as Salesforce, Amplitude, and
so on.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectorEntity in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


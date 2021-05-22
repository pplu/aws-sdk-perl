
package Paws::Appflow::DescribeConnectors;
  use Moose;
  has ConnectorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'connectorTypes');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DescribeConnectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectors - Arguments for method DescribeConnectors on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectors on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DescribeConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectors.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DescribeConnectorsResponse = $appflow->DescribeConnectors(
      ConnectorTypes => [
        'Salesforce',
        ... # values: Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles
      ],    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ConnectorConfigurations =
      $DescribeConnectorsResponse->ConnectorConfigurations;
    my $NextToken = $DescribeConnectorsResponse->NextToken;

    # Returns a L<Paws::Appflow::DescribeConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DescribeConnectors>

=head1 ATTRIBUTES


=head2 ConnectorTypes => ArrayRef[Str|Undef]

The type of connector, such as Salesforce, Amplitude, and so on.



=head2 NextToken => Str

The pagination token for the next page of data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectors in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


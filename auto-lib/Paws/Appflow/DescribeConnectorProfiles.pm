
package Paws::Appflow::DescribeConnectorProfiles;
  use Moose;
  has ConnectorProfileNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'connectorProfileNames');
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectorProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-connector-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DescribeConnectorProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorProfiles - Arguments for method DescribeConnectorProfiles on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectorProfiles on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DescribeConnectorProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectorProfiles.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DescribeConnectorProfilesResponse = $appflow->DescribeConnectorProfiles(
      ConnectorProfileNames => [
        'MyConnectorProfileName', ...    # max: 256
      ],                                 # OPTIONAL
      ConnectorType => 'Salesforce',     # OPTIONAL
      MaxResults    => 1,                # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ConnectorProfileDetails =
      $DescribeConnectorProfilesResponse->ConnectorProfileDetails;
    my $NextToken = $DescribeConnectorProfilesResponse->NextToken;

    # Returns a L<Paws::Appflow::DescribeConnectorProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DescribeConnectorProfiles>

=head1 ATTRIBUTES


=head2 ConnectorProfileNames => ArrayRef[Str|Undef]

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in the AWS account.



=head2 ConnectorType => Str

The type of connector, such as Salesforce, Amplitude, and so on.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">

=head2 MaxResults => Int

Specifies the maximum number of items that should be returned in the
result set. The default for C<maxResults> is 20 (for all paginated API
operations).



=head2 NextToken => Str

The pagination token for the next page of data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectorProfiles in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


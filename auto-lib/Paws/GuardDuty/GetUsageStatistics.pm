
package Paws::GuardDuty::GetUsageStatistics;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit');
  has UsageCriteria => (is => 'ro', isa => 'Paws::GuardDuty::UsageCriteria', traits => ['NameInRequest'], request_name => 'usageCriteria', required => 1);
  has UsageStatisticType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageStatisticsType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsageStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/usage/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetUsageStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetUsageStatistics - Arguments for method GetUsageStatistics on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsageStatistics on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetUsageStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsageStatistics.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetUsageStatisticsResponse = $guardduty->GetUsageStatistics(
      DetectorId    => 'MyDetectorId',
      UsageCriteria => {
        DataSources => [
          'FLOW_LOGS', ...   # values: FLOW_LOGS, CLOUD_TRAIL, DNS_LOGS, S3_LOGS
        ],
        AccountIds => [
          'MyAccountId', ...    # min: 12, max: 12
        ],                      # min: 1, max: 50; OPTIONAL
        Resources => [ 'MyString', ... ],    # OPTIONAL
      },
      UsageStatisticType => 'SUM_BY_ACCOUNT',
      MaxResults         => 1,                  # OPTIONAL
      NextToken          => 'MyString',         # OPTIONAL
      Unit               => 'MyString',         # OPTIONAL
    );

    # Results:
    my $NextToken       = $GetUsageStatisticsResponse->NextToken;
    my $UsageStatistics = $GetUsageStatisticsResponse->UsageStatistics;

    # Returns a L<Paws::GuardDuty::GetUsageStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetUsageStatistics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose usage
statistics you want to retrieve.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the NextToken value
returned from the previous request to continue listing results after
the first page.



=head2 Unit => Str

The currency unit you would like to view your usage statistics in.
Current valid values are USD.



=head2 B<REQUIRED> UsageCriteria => L<Paws::GuardDuty::UsageCriteria>

Represents the criteria used for querying usage.



=head2 B<REQUIRED> UsageStatisticType => Str

The type of usage statistics to retrieve.

Valid values are: C<"SUM_BY_ACCOUNT">, C<"SUM_BY_DATA_SOURCE">, C<"SUM_BY_RESOURCE">, C<"TOP_RESOURCES">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsageStatistics in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


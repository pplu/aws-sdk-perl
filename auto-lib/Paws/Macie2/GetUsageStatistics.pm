
package Paws::Macie2::GetUsageStatistics;
  use Moose;
  has FilterBy => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::UsageStatisticsFilter]', traits => ['NameInRequest'], request_name => 'filterBy');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::Macie2::UsageStatisticsSortBy', traits => ['NameInRequest'], request_name => 'sortBy');
  has TimeRange => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsageStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usage/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetUsageStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetUsageStatistics - Arguments for method GetUsageStatistics on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsageStatistics on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetUsageStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsageStatistics.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetUsageStatisticsResponse = $macie2->GetUsageStatistics(
      FilterBy => [
        {
          Comparator =>
            'GT',    # values: GT, GTE, LT, LTE, EQ, NE, CONTAINS; OPTIONAL
          Key => 'accountId'
          , # values: accountId, serviceLimit, freeTrialStartDate, total; OPTIONAL
          Values => [ 'My__string', ... ],    # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'My__string',             # OPTIONAL
      SortBy     => {
        Key => 'accountId'
        , # values: accountId, total, serviceLimitValue, freeTrialStartDate; OPTIONAL
        OrderBy => 'ASC',    # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
      TimeRange => 'MONTH_TO_DATE',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetUsageStatisticsResponse->NextToken;
    my $Records   = $GetUsageStatisticsResponse->Records;
    my $TimeRange = $GetUsageStatisticsResponse->TimeRange;

    # Returns a L<Paws::Macie2::GetUsageStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetUsageStatistics>

=head1 ATTRIBUTES


=head2 FilterBy => ArrayRef[L<Paws::Macie2::UsageStatisticsFilter>]

An array of objects, one for each condition to use to filter the query
results. If you specify more than one condition, Amazon Macie uses an
AND operator to join the conditions.



=head2 MaxResults => Int

The maximum number of items to include in each page of the response.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.



=head2 SortBy => L<Paws::Macie2::UsageStatisticsSortBy>

The criteria to use to sort the query results.



=head2 TimeRange => Str

The inclusive time period to query usage data for. Valid values are:
MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days. If you don't specify a value,
Amazon Macie provides usage data for the preceding 30 days.

Valid values are: C<"MONTH_TO_DATE">, C<"PAST_30_DAYS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsageStatistics in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


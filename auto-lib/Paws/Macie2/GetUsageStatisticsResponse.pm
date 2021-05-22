
package Paws::Macie2::GetUsageStatisticsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::UsageRecord]', traits => ['NameInRequest'], request_name => 'records');
  has TimeRange => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeRange');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetUsageStatisticsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 Records => ArrayRef[L<Paws::Macie2::UsageRecord>]

An array of objects that contains the results of the query. Each object
contains the data for an account that meets the filter criteria
specified in the request.


=head2 TimeRange => Str

The inclusive time period that the usage data applies to. Possible
values are: MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days.

Valid values are: C<"MONTH_TO_DATE">, C<"PAST_30_DAYS">
=head2 _request_id => Str


=cut


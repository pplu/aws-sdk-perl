
package Paws::Macie2::GetUsageTotalsResponse;
  use Moose;
  has TimeRange => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timeRange');
  has UsageTotals => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::UsageTotal]', traits => ['NameInRequest'], request_name => 'usageTotals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetUsageTotalsResponse

=head1 ATTRIBUTES


=head2 TimeRange => Str

The inclusive time period that the usage data applies to. Possible
values are: MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days.

Valid values are: C<"MONTH_TO_DATE">, C<"PAST_30_DAYS">
=head2 UsageTotals => ArrayRef[L<Paws::Macie2::UsageTotal>]

An array of objects that contains the results of the query. Each object
contains the data for a specific usage metric.


=head2 _request_id => Str


=cut


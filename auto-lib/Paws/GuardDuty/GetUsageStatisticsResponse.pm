
package Paws::GuardDuty::GetUsageStatisticsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has UsageStatistics => (is => 'ro', isa => 'Paws::GuardDuty::UsageStatistics', traits => ['NameInRequest'], request_name => 'usageStatistics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetUsageStatisticsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 UsageStatistics => L<Paws::GuardDuty::UsageStatistics>

The usage statistics object. If a UsageStatisticType was provided, the
objects representing other types will be null.


=head2 _request_id => Str


=cut



package Paws::GuardDuty::GetFindingsStatisticsResponse;
  use Moose;
  has FindingStatistics => (is => 'ro', isa => 'Paws::GuardDuty::FindingStatistics', traits => ['NameInRequest'], request_name => 'findingStatistics', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFindingsStatisticsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingStatistics => L<Paws::GuardDuty::FindingStatistics>

Finding statistics object.


=head2 _request_id => Str


=cut


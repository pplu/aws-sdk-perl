
package Paws::WellArchitected::ListNotificationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::NotificationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListNotificationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NotificationSummaries => ArrayRef[L<Paws::WellArchitected::NotificationSummary>]

List of lens notification summaries in a workload.


=head2 _request_id => Str


=cut


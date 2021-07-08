
package Paws::WellArchitected::GetMilestoneOutput;
  use Moose;
  has Milestone => (is => 'ro', isa => 'Paws::WellArchitected::Milestone');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetMilestoneOutput

=head1 ATTRIBUTES


=head2 Milestone => L<Paws::WellArchitected::Milestone>




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut


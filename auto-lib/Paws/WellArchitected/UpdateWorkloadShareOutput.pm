
package Paws::WellArchitected::UpdateWorkloadShareOutput;
  use Moose;
  has WorkloadId => (is => 'ro', isa => 'Str');
  has WorkloadShare => (is => 'ro', isa => 'Paws::WellArchitected::WorkloadShare');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateWorkloadShareOutput

=head1 ATTRIBUTES


=head2 WorkloadId => Str




=head2 WorkloadShare => L<Paws::WellArchitected::WorkloadShare>




=head2 _request_id => Str


=cut


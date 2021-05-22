
package Paws::WellArchitected::GetWorkloadOutput;
  use Moose;
  has Workload => (is => 'ro', isa => 'Paws::WellArchitected::Workload');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetWorkloadOutput

=head1 ATTRIBUTES


=head2 Workload => L<Paws::WellArchitected::Workload>




=head2 _request_id => Str


=cut


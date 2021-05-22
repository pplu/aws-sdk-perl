
package Paws::WellArchitected::CreateWorkloadOutput;
  use Moose;
  has WorkloadArn => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateWorkloadOutput

=head1 ATTRIBUTES


=head2 WorkloadArn => Str




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut


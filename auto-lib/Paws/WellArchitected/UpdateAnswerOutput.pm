
package Paws::WellArchitected::UpdateAnswerOutput;
  use Moose;
  has Answer => (is => 'ro', isa => 'Paws::WellArchitected::Answer');
  has LensAlias => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateAnswerOutput

=head1 ATTRIBUTES


=head2 Answer => L<Paws::WellArchitected::Answer>




=head2 LensAlias => Str




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut


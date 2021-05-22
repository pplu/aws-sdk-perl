
package Paws::WellArchitected::ListLensesOutput;
  use Moose;
  has LensSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::LensSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListLensesOutput

=head1 ATTRIBUTES


=head2 LensSummaries => ArrayRef[L<Paws::WellArchitected::LensSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut


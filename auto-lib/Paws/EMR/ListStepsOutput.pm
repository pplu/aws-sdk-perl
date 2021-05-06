
package Paws::EMR::ListStepsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListStepsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Steps => ArrayRef[L<Paws::EMR::StepSummary>]

The filtered list of steps for the cluster.


=head2 _request_id => Str


=cut

1;
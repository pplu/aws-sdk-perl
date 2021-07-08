
package Paws::LookoutEquipment::ListInferenceExecutionsResponse;
  use Moose;
  has InferenceExecutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::InferenceExecutionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceExecutionsResponse

=head1 ATTRIBUTES


=head2 InferenceExecutionSummaries => ArrayRef[L<Paws::LookoutEquipment::InferenceExecutionSummary>]

Provides an array of information about the individual inference
executions returned from the C<ListInferenceExecutions> operation,
including model used, inference scheduler, data configuration, and so
on.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference executions.


=head2 _request_id => Str


=cut

1;
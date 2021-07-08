
package Paws::LookoutEquipment::ListInferenceSchedulersResponse;
  use Moose;
  has InferenceSchedulerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::InferenceSchedulerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceSchedulersResponse

=head1 ATTRIBUTES


=head2 InferenceSchedulerSummaries => ArrayRef[L<Paws::LookoutEquipment::InferenceSchedulerSummary>]

Provides information about the specified inference scheduler, including
data upload frequency, model name and ARN, and status.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference schedulers.


=head2 _request_id => Str


=cut

1;
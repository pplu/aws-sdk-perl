
package Paws::LookoutEquipment::ListModelsResponse;
  use Moose;
  has ModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::ModelSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListModelsResponse

=head1 ATTRIBUTES


=head2 ModelSummaries => ArrayRef[L<Paws::LookoutEquipment::ModelSummary>]

Provides information on the specified model, including created time,
model and dataset ARNs, and status.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
ML models.


=head2 _request_id => Str


=cut

1;
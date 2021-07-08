
package Paws::LookoutEquipment::ListDatasetsResponse;
  use Moose;
  has DatasetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::DatasetSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 DatasetSummaries => ArrayRef[L<Paws::LookoutEquipment::DatasetSummary>]

Provides information about the specified dataset, including creation
time, dataset ARN, and status.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
datasets.


=head2 _request_id => Str


=cut

1;
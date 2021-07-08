
package Paws::LookoutVision::CreateDatasetResponse;
  use Moose;
  has DatasetMetadata => (is => 'ro', isa => 'Paws::LookoutVision::DatasetMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetMetadata => L<Paws::LookoutVision::DatasetMetadata>

Information about the dataset.


=head2 _request_id => Str


=cut


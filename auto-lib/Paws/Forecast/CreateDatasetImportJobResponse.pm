
package Paws::Forecast::CreateDatasetImportJobResponse;
  use Moose;
  has DatasetImportJobArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobArn => Str

The Amazon Resource Name (ARN) of the dataset import job.


=head2 _request_id => Str


=cut

1;
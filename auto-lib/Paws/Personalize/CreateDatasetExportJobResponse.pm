
package Paws::Personalize::CreateDatasetExportJobResponse;
  use Moose;
  has DatasetExportJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetExportJobArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetExportJobResponse

=head1 ATTRIBUTES


=head2 DatasetExportJobArn => Str

The Amazon Resource Name (ARN) of the dataset export job.


=head2 _request_id => Str


=cut

1;
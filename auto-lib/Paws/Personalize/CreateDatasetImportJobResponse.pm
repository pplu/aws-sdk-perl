
package Paws::Personalize::CreateDatasetImportJobResponse;
  use Moose;
  has DatasetImportJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetImportJobArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobArn => Str

The ARN of the dataset import job.


=head2 _request_id => Str


=cut

1;

package Paws::Forecast::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 _request_id => Str


=cut

1;
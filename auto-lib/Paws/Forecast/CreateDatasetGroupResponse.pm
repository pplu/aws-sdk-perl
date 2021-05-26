
package Paws::Forecast::CreateDatasetGroupResponse;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetGroupResponse

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group.


=head2 _request_id => Str


=cut

1;
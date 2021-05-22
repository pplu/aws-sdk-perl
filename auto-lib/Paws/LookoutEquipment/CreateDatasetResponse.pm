
package Paws::LookoutEquipment::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset being created.


=head2 DatasetName => Str

The name of the dataset being created.


=head2 Status => Str

Indicates the status of the C<CreateDataset> operation.

Valid values are: C<"CREATED">, C<"INGESTION_IN_PROGRESS">, C<"ACTIVE">
=head2 _request_id => Str


=cut

1;
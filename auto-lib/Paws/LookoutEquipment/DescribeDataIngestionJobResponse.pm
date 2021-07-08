
package Paws::LookoutEquipment::DescribeDataIngestionJobResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has FailedReason => (is => 'ro', isa => 'Str');
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration');
  has JobId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDataIngestionJobResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time at which the data ingestion job was created.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset being used in the data
ingestion job.


=head2 FailedReason => Str

Specifies the reason for failure when a data ingestion job has failed.


=head2 IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies the S3 location configuration for the data input for the data
ingestion job.


=head2 JobId => Str

Indicates the job ID of the data ingestion job.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the data source being ingested.


=head2 Status => Str

Indicates the status of the C<DataIngestionJob> operation.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
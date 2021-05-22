
package Paws::LookoutEquipment::DescribeDatasetResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Specifies the time the dataset was created in Amazon Lookout for
Equipment.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset being described.


=head2 DatasetName => Str

The name of the dataset being described.


=head2 IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies the S3 location configuration for the data input for the data
ingestion job.


=head2 LastUpdatedAt => Str

Specifies the time the dataset was last updated, if it was.


=head2 Schema => Str

A JSON description of the data that is in each time series dataset,
including names, column names, and data types.


=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt dataset data by Amazon Lookout for Equipment.


=head2 Status => Str

Indicates the status of the dataset.

Valid values are: C<"CREATED">, C<"INGESTION_IN_PROGRESS">, C<"ACTIVE">
=head2 _request_id => Str


=cut

1;
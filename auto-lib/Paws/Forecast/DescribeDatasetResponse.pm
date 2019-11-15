
package Paws::Forecast::DescribeDatasetResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataFrequency => (is => 'ro', isa => 'Str');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has DatasetType => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Paws::Forecast::Schema');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the dataset was created.


=head2 DataFrequency => Str

The frequency of data collection.

Valid intervals are Y (Year), M (Month), W (Week), D (Day), H (Hour),
30min (30 minutes), 15min (15 minutes), 10min (10 minutes), 5min (5
minutes), and 1min (1 minute). For example, "M" indicates every month
and "30min" indicates every 30 minutes.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 DatasetName => Str

The name of the dataset.


=head2 DatasetType => Str

The dataset type.

Valid values are: C<"TARGET_TIME_SERIES">, C<"RELATED_TIME_SERIES">, C<"ITEM_METADATA">
=head2 Domain => Str

The dataset domain.

Valid values are: C<"RETAIL">, C<"CUSTOM">, C<"INVENTORY_PLANNING">, C<"EC2_CAPACITY">, C<"WORK_FORCE">, C<"WEB_TRAFFIC">, C<"METRICS">
=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.


=head2 LastModificationTime => Str

When the dataset is created, C<LastModificationTime> is the same as
C<CreationTime>. After a CreateDatasetImportJob operation is called,
C<LastModificationTime> is when the import job finished or failed.
While data is being imported to the dataset, C<LastModificationTime> is
the current query time.


=head2 Schema => L<Paws::Forecast::Schema>

An array of C<SchemaAttribute> objects that specify the dataset fields.
Each C<SchemaAttribute> specifies the name and data type of a field.


=head2 Status => Str

The status of the dataset. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=item *

C<UPDATE_PENDING>, C<UPDATE_IN_PROGRESS>, C<UPDATE_FAILED>

=back

The C<UPDATE> states apply while data is imported to the dataset from a
call to the CreateDatasetImportJob operation. During this time, the
status reflects the status of the dataset import job. For example, when
the import job status is C<CREATE_IN_PROGRESS>, the status of the
dataset is C<UPDATE_IN_PROGRESS>.

The C<Status> of the dataset must be C<ACTIVE> before you can import
training data.


=head2 _request_id => Str


=cut

1;
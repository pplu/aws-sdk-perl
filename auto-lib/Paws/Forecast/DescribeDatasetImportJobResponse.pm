
package Paws::Forecast::DescribeDatasetImportJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetImportJobArn => (is => 'ro', isa => 'Str');
  has DatasetImportJobName => (is => 'ro', isa => 'Str');
  has DataSize => (is => 'ro', isa => 'Num');
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource');
  has FieldStatistics => (is => 'ro', isa => 'Paws::Forecast::FieldStatistics');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TimestampFormat => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the dataset import job was created.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset that the training data
was imported to.


=head2 DatasetImportJobArn => Str

The ARN of the dataset import job.


=head2 DatasetImportJobName => Str

The name of the dataset import job.


=head2 DataSize => Num

The size of the dataset in gigabytes (GB) after the import job has
finished.


=head2 DataSource => L<Paws::Forecast::DataSource>

The location of the training data to import and an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data.

If encryption is used, C<DataSource> includes an AWS Key Management
Service (KMS) key.


=head2 FieldStatistics => L<Paws::Forecast::FieldStatistics>

Statistical information about each field in the input data.


=head2 LastModificationTime => Str

The last time that the dataset was modified. The time depends on the
status of the job, as follows:

=over

=item *

C<CREATE_PENDING> - The same time as C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 Status => Str

The status of the dataset import job. The status is reflected in the
status of the dataset. For example, when the import job status is
C<CREATE_IN_PROGRESS>, the status of the dataset is
C<UPDATE_IN_PROGRESS>. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back



=head2 TimestampFormat => Str

The format of timestamps in the dataset. The format that you specify
depends on the C<DataFrequency> specified when the dataset was created.
The following formats are supported

=over

=item *

"yyyy-MM-dd"

For the following data frequencies: Y, M, W, and D

=item *

"yyyy-MM-dd HH:mm:ss"

For the following data frequencies: H, 30min, 15min, and 1min; and
optionally, for: Y, M, W, and D

=back



=head2 _request_id => Str


=cut

1;
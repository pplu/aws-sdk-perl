# Generated from json/callresult_class.tt

package Paws::Forecast::DescribeDatasetImportJobResponse;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::Forecast::Types qw/Forecast_DataSource Forecast_FieldStatistics/;
  has CreationTime => (is => 'ro', isa => Str);
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetImportJobArn => (is => 'ro', isa => Str);
  has DatasetImportJobName => (is => 'ro', isa => Str);
  has DataSize => (is => 'ro', isa => Num);
  has DataSource => (is => 'ro', isa => Forecast_DataSource);
  has FieldStatistics => (is => 'ro', isa => Forecast_FieldStatistics);
  has LastModificationTime => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TimestampFormat => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimestampFormat' => {
                                      'type' => 'Str'
                                    },
               'DatasetImportJobArn' => {
                                          'type' => 'Str'
                                        },
               'LastModificationTime' => {
                                           'type' => 'Str'
                                         },
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'DatasetImportJobName' => {
                                           'type' => 'Str'
                                         },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Message' => {
                              'type' => 'Str'
                            },
               'DataSize' => {
                               'type' => 'Num'
                             },
               'DataSource' => {
                                 'class' => 'Paws::Forecast::DataSource',
                                 'type' => 'Forecast_DataSource'
                               },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'FieldStatistics' => {
                                      'type' => 'Forecast_FieldStatistics',
                                      'class' => 'Paws::Forecast::FieldStatistics'
                                    }
             }
}
;
    return $Params_map;
  }


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

The size of the dataset in gigabytes (GB) after completion of the
import job.


=head2 DataSource => Forecast_DataSource

The location of the training data to import. The training data must be
stored in an Amazon S3 bucket.


=head2 FieldStatistics => Forecast_FieldStatistics

Statistical information about each field in the input data.


=head2 LastModificationTime => Str

Dependent on the status as follows:

=over

=item *

C<CREATE_PENDING> - same as C<CreationTime>

=item *

C<CREATE_IN_PROGRESS> - the current timestamp

=item *

C<ACTIVE> or C<CREATE_FAILED> - when the job finished or failed

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

The format of timestamps in the dataset. Two formats are supported
dependent on the C<DataFrequency> specified when the dataset was
created.

=over

=item *

"yyyy-MM-dd"

For data frequencies: Y, M, W, and D

=item *

"yyyy-MM-dd HH:mm:ss"

For data frequencies: H, 30min, 15min, and 1min; and optionally, for:
Y, M, W, and D

=back



=head2 _request_id => Str


=cut

1;
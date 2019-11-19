# Generated from json/callresult_class.tt

package Paws::Forecast::DescribeForecastExportJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw/Forecast_DataDestination/;
  has CreationTime => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => Forecast_DataDestination);
  has ForecastArn => (is => 'ro', isa => Str);
  has ForecastExportJobArn => (is => 'ro', isa => Str);
  has ForecastExportJobName => (is => 'ro', isa => Str);
  has LastModificationTime => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastModificationTime' => {
                                           'type' => 'Str'
                                         },
               'Message' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'Destination' => {
                                  'type' => 'Forecast_DataDestination',
                                  'class' => 'Paws::Forecast::DataDestination'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ForecastArn' => {
                                  'type' => 'Str'
                                },
               'ForecastExportJobArn' => {
                                           'type' => 'Str'
                                         },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ForecastExportJobName' => {
                                            'type' => 'Str'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeForecastExportJobResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the forecast export job was created.


=head2 Destination => Forecast_DataDestination

The path to the AWS S3 bucket where the forecast is exported.


=head2 ForecastArn => Str

The Amazon Resource Name (ARN) of the exported forecast.


=head2 ForecastExportJobArn => Str

The ARN of the forecast export job.


=head2 ForecastExportJobName => Str

The name of the forecast export job.


=head2 LastModificationTime => Str

When the last successful export job finished.


=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 Status => Str

The status of the forecast export job. One of the following states:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your Amazon S3 bucket.


=head2 _request_id => Str


=cut

1;
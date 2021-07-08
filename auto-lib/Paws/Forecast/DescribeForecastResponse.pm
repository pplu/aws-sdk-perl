
package Paws::Forecast::DescribeForecastResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetGroupArn => (is => 'ro', isa => 'Str');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has ForecastArn => (is => 'ro', isa => 'Str');
  has ForecastName => (is => 'ro', isa => 'Str');
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PredictorArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeForecastResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the forecast creation task was created.


=head2 DatasetGroupArn => Str

The ARN of the dataset group that provided the data used to train the
predictor.


=head2 EstimatedTimeRemainingInMinutes => Int

The estimated time remaining in minutes for the forecast job to
complete.


=head2 ForecastArn => Str

The forecast ARN as specified in the request.


=head2 ForecastName => Str

The name of the forecast.


=head2 ForecastTypes => ArrayRef[Str|Undef]

The quantiles at which probabilistic forecasts were generated.


=head2 LastModificationTime => Str

The last time the resource was modified. The timestamp depends on the
status of the job:

=over

=item *

C<CREATE_PENDING> - The C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<CREATE_STOPPING> - The current timestamp.

=item *

C<CREATE_STOPPED> - When the job stopped.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 PredictorArn => Str

The ARN of the predictor used to generate the forecast.


=head2 Status => Str

The status of the forecast. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<CREATE_STOPPING>, C<CREATE_STOPPED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast.


=head2 _request_id => Str


=cut

1;
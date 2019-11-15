
package Paws::Forecast::DescribeForecastResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetGroupArn => (is => 'ro', isa => 'Str');
  has ForecastArn => (is => 'ro', isa => 'Str');
  has ForecastName => (is => 'ro', isa => 'Str');
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


=head2 ForecastArn => Str

The same forecast ARN as given in the request.


=head2 ForecastName => Str

The name of the forecast.


=head2 LastModificationTime => Str

Initially, the same as C<CreationTime> (status is C<CREATE_PENDING>).
Updated when inference (creating the forecast) starts (status changed
to C<CREATE_IN_PROGRESS>), and when inference is complete (status
changed to C<ACTIVE>) or fails (status changed to C<CREATE_FAILED>).


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

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast.


=head2 _request_id => Str


=cut

1;
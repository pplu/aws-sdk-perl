
package Paws::Forecast::DescribePredictorBacktestExportJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PredictorArn => (is => 'ro', isa => 'Str');
  has PredictorBacktestExportJobArn => (is => 'ro', isa => 'Str');
  has PredictorBacktestExportJobName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribePredictorBacktestExportJobResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the predictor backtest export job was created.


=head2 Destination => L<Paws::Forecast::DataDestination>




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

Information about any errors that may have occurred during the backtest
export.


=head2 PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor.


=head2 PredictorBacktestExportJobArn => Str

The Amazon Resource Name (ARN) of the predictor backtest export job.


=head2 PredictorBacktestExportJobName => Str

The name of the predictor backtest export job.


=head2 Status => Str

The status of the predictor backtest export job. States include:

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



=head2 _request_id => Str


=cut

1;
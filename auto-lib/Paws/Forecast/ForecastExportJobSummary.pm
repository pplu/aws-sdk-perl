package Paws::Forecast::ForecastExportJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination');
  has ForecastExportJobArn => (is => 'ro', isa => 'Str');
  has ForecastExportJobName => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ForecastExportJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::ForecastExportJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::ForecastExportJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of the forecast export job properties used in the
ListForecastExportJobs operation. To get the complete set of
properties, call the DescribeForecastExportJob operation, and provide
the listed C<ForecastExportJobArn>.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  When the forecast export job was created.


=head2 Destination => L<Paws::Forecast::DataDestination>

  The path to the Amazon Simple Storage Service (Amazon S3) bucket where
the forecast is exported.


=head2 ForecastExportJobArn => Str

  The Amazon Resource Name (ARN) of the forecast export job.


=head2 ForecastExportJobName => Str

  The name of the forecast export job.


=head2 LastModificationTime => Str

  When the last successful export job finished.


=head2 Message => Str

  If an error occurred, an informational message about the error.


=head2 Status => Str

  The status of the forecast export job. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


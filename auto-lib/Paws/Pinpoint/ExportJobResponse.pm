package Paws::Pinpoint::ExportJobResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CompletedPieces => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Pinpoint::ExportJobResource');
  has FailedPieces => (is => 'ro', isa => 'Int');
  has Failures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Id => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has TotalFailures => (is => 'ro', isa => 'Int');
  has TotalPieces => (is => 'ro', isa => 'Int');
  has TotalProcessed => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ExportJobResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ExportJobResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ExportJobResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Export job response.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique ID of the application associated with the export job.


=head2 CompletedPieces => Int

  The number of pieces that have successfully completed as of the time of
the request.


=head2 CompletionDate => Str

  The date the job completed in ISO 8601 format.


=head2 CreationDate => Str

  The date the job was created in ISO 8601 format.


=head2 Definition => L<Paws::Pinpoint::ExportJobResource>

  The export job settings.


=head2 FailedPieces => Int

  The number of pieces that failed to be processed as of the time of the
request.


=head2 Failures => ArrayRef[Str|Undef]

  Provides up to 100 of the first failed entries for the job, if any
exist.


=head2 Id => Str

  The unique ID of the job.


=head2 JobStatus => Str

  The status of the job. Valid values: CREATED, INITIALIZING, PROCESSING,
COMPLETING, COMPLETED, FAILING, FAILED The job status is FAILED if one
or more pieces failed.


=head2 TotalFailures => Int

  The number of endpoints that were not processed; for example, because
of syntax errors.


=head2 TotalPieces => Int

  The total number of pieces that must be processed to finish the job.
Each piece is an approximately equal portion of the endpoints.


=head2 TotalProcessed => Int

  The number of endpoints that were processed by the job.


=head2 Type => Str

  The job type. Will be 'EXPORT'.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


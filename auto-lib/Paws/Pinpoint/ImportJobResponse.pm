
package Paws::Pinpoint::ImportJobResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has CompletedPieces => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::Pinpoint::ImportJobResource', required => 1);
  has FailedPieces => (is => 'ro', isa => 'Int');
  has Failures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', required => 1);
  has TotalFailures => (is => 'ro', isa => 'Int');
  has TotalPieces => (is => 'ro', isa => 'Int');
  has TotalProcessed => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that's associated with the
import job.


=head2 CompletedPieces => Int

The number of pieces that were processed successfully (completed) by
the import job, as of the time of the request.


=head2 CompletionDate => Str

The date, in ISO 8601 format, when the import job was completed.


=head2 B<REQUIRED> CreationDate => Str

The date, in ISO 8601 format, when the import job was created.


=head2 B<REQUIRED> Definition => L<Paws::Pinpoint::ImportJobResource>

The resource settings that apply to the import job.


=head2 FailedPieces => Int

The number of pieces that weren't processed successfully (failed) by
the import job, as of the time of the request.


=head2 Failures => ArrayRef[Str|Undef]

An array of entries, one for each of the first 100 entries that weren't
processed successfully (failed) by the import job, if any.


=head2 B<REQUIRED> Id => Str

The unique identifier for the import job.


=head2 B<REQUIRED> JobStatus => Str

The status of the import job. The job status is FAILED if Amazon
Pinpoint wasn't able to process one or more pieces in the job.

Valid values are: C<"CREATED">, C<"INITIALIZING">, C<"PROCESSING">, C<"COMPLETING">, C<"COMPLETED">, C<"FAILING">, C<"FAILED">
=head2 TotalFailures => Int

The total number of endpoint definitions that weren't processed
successfully (failed) by the import job, typically because an error,
such as a syntax error, occurred.


=head2 TotalPieces => Int

The total number of pieces that must be processed to complete the
import job. Each piece consists of an approximately equal portion of
the endpoint definitions that are part of the import job.


=head2 TotalProcessed => Int

The total number of endpoint definitions that were processed by the
import job.


=head2 B<REQUIRED> Type => Str

The job type. This value is IMPORT for import jobs.


=head2 _request_id => Str


=cut


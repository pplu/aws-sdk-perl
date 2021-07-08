
package Paws::HealthLake::StartFHIRExportJobResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::StartFHIRExportJobResponse

=head1 ATTRIBUTES


=head2 DatastoreId => Str

The AWS generated ID for the Data Store from which files are being
exported for an export job.


=head2 B<REQUIRED> JobId => Str

The AWS generated ID for an export job.


=head2 B<REQUIRED> JobStatus => Str

The status of a FHIR export job. Possible statuses are SUBMITTED,
IN_PROGRESS, COMPLETED, or FAILED.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
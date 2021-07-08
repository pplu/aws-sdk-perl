
package Paws::HealthLake::StartFHIRImportJobResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::StartFHIRImportJobResponse

=head1 ATTRIBUTES


=head2 DatastoreId => Str

The AWS-generated Data Store ID.


=head2 B<REQUIRED> JobId => Str

The AWS-generated job ID.


=head2 B<REQUIRED> JobStatus => Str

The status of an import job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
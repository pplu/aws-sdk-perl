
package Paws::Honeycode::StartTableDataImportJobResult;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::StartTableDataImportJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The id that is assigned to this import job. Future requests to find out
the status of this import job need to send this id in the appropriate
parameter in the request.


=head2 B<REQUIRED> JobStatus => Str

The status of the import job immediately after submitting the request.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 _request_id => Str


=cut


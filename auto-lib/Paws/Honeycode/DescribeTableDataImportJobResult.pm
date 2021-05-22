
package Paws::Honeycode::DescribeTableDataImportJobResult;
  use Moose;
  has JobMetadata => (is => 'ro', isa => 'Paws::Honeycode::TableDataImportJobMetadata', traits => ['NameInRequest'], request_name => 'jobMetadata', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::DescribeTableDataImportJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobMetadata => L<Paws::Honeycode::TableDataImportJobMetadata>

The metadata about the job that was submitted for import.


=head2 B<REQUIRED> JobStatus => Str

The current status of the import job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 B<REQUIRED> Message => Str

A message providing more details about the current status of the import
job.


=head2 _request_id => Str


=cut


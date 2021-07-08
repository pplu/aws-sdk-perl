
package Paws::LookoutEquipment::StartDataIngestionJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::StartDataIngestionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

Indicates the job ID of the data ingestion job.


=head2 Status => Str

Indicates the status of the C<StartDataIngestionJob> operation.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
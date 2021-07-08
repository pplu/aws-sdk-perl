
package Paws::LookoutEquipment::ListDataIngestionJobsResponse;
  use Moose;
  has DataIngestionJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::DataIngestionJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListDataIngestionJobsResponse

=head1 ATTRIBUTES


=head2 DataIngestionJobSummaries => ArrayRef[L<Paws::LookoutEquipment::DataIngestionJobSummary>]

Specifies information about the specific data ingestion job, including
dataset name and status.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
data ingestion jobs.


=head2 _request_id => Str


=cut

1;
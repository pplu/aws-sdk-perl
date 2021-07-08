
package Paws::Personalize::ListDatasetExportJobsResponse;
  use Moose;
  has DatasetExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DatasetExportJobSummary]', traits => ['NameInRequest'], request_name => 'datasetExportJobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetExportJobsResponse

=head1 ATTRIBUTES


=head2 DatasetExportJobs => ArrayRef[L<Paws::Personalize::DatasetExportJobSummary>]

The list of dataset export jobs.


=head2 NextToken => Str

A token for getting the next set of dataset export jobs (if they
exist).


=head2 _request_id => Str


=cut

1;
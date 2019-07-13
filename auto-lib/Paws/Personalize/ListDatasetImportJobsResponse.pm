
package Paws::Personalize::ListDatasetImportJobsResponse;
  use Moose;
  has DatasetImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DatasetImportJobSummary]', traits => ['NameInRequest'], request_name => 'datasetImportJobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetImportJobsResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobs => ArrayRef[L<Paws::Personalize::DatasetImportJobSummary>]

The list of dataset import jobs.


=head2 NextToken => Str

A token for getting the next set of dataset import jobs (if they
exist).


=head2 _request_id => Str


=cut

1;
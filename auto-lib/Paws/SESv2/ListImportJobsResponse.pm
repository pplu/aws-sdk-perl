
package Paws::SESv2::ListImportJobsResponse;
  use Moose;
  has ImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::ImportJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListImportJobsResponse

=head1 ATTRIBUTES


=head2 ImportJobs => ArrayRef[L<Paws::SESv2::ImportJobSummary>]

A list of the import job summaries.


=head2 NextToken => Str

A string token indicating that there might be additional import jobs
available to be listed. Copy this token to a subsequent call to
C<ListImportJobs> with the same parameters to retrieve the next page of
import jobs.


=head2 _request_id => Str


=cut



package Paws::Kendra::ListDataSourceSyncJobsResponse;
  use Moose;
  has History => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceSyncJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListDataSourceSyncJobsResponse

=head1 ATTRIBUTES


=head2 History => ArrayRef[L<Paws::Kendra::DataSourceSyncJob>]

A history of synchronization jobs for the data source.


=head2 NextToken => Str

The C<GetDataSourceSyncJobHistory> operation returns a page of
vocabularies at a time. The maximum size of the page is set by the
C<MaxResults> parameter. If there are more jobs in the list than the
page size, Amazon Kendra returns the NextPage token. Include the token
in the next request to the C<GetDataSourceSyncJobHistory> operation to
return in the next page of jobs.


=head2 _request_id => Str


=cut

1;
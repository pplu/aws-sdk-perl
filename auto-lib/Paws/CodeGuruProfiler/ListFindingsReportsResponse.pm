
package Paws::CodeGuruProfiler::ListFindingsReportsResponse;
  use Moose;
  has FindingsReportSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::FindingsReportSummary]', traits => ['NameInRequest'], request_name => 'findingsReportSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListFindingsReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingsReportSummaries => ArrayRef[L<Paws::CodeGuruProfiler::FindingsReportSummary>]

The list of analysis results summaries.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListFindingsReports>
request. When the results of a C<ListFindingsReports> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut


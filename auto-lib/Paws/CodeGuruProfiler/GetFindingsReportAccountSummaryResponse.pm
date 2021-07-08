
package Paws::CodeGuruProfiler::GetFindingsReportAccountSummaryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReportSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::FindingsReportSummary]', traits => ['NameInRequest'], request_name => 'reportSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetFindingsReportAccountSummaryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<GetFindingsReportAccountSummary> request. When the results of a
C<GetFindingsReportAccountSummary> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 B<REQUIRED> ReportSummaries => ArrayRef[L<Paws::CodeGuruProfiler::FindingsReportSummary>]

The return list of C<FindingsReportSummary>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html)
objects taht contain summaries of analysis results for all profiling
groups in your AWS account.


=head2 _request_id => Str


=cut


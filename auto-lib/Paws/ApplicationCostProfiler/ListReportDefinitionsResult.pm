
package Paws::ApplicationCostProfiler::ListReportDefinitionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReportDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationCostProfiler::ReportDefinition]', traits => ['NameInRequest'], request_name => 'reportDefinitions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::ListReportDefinitionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The value of the next token, if it exists. Null if there are no more
results.


=head2 ReportDefinitions => ArrayRef[L<Paws::ApplicationCostProfiler::ReportDefinition>]

The retrieved reports.


=head2 _request_id => Str


=cut


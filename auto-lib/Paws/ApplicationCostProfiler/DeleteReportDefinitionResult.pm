
package Paws::ApplicationCostProfiler::DeleteReportDefinitionResult;
  use Moose;
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::DeleteReportDefinitionResult

=head1 ATTRIBUTES


=head2 ReportId => Str

ID of the report that was deleted.


=head2 _request_id => Str


=cut


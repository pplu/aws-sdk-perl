
package Paws::CodeBuild::GetReportGroupTrendOutput;
  use Moose;
  has RawData => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ReportWithRawData]', traits => ['NameInRequest'], request_name => 'rawData' );
  has Stats => (is => 'ro', isa => 'Paws::CodeBuild::ReportGroupTrendStats', traits => ['NameInRequest'], request_name => 'stats' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::GetReportGroupTrendOutput

=head1 ATTRIBUTES


=head2 RawData => ArrayRef[L<Paws::CodeBuild::ReportWithRawData>]

An array that contains the raw data for each report.


=head2 Stats => L<Paws::CodeBuild::ReportGroupTrendStats>

Contains the accumulated trend data.


=head2 _request_id => Str


=cut

1;
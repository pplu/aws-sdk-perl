
package Paws::CUR::DescribeReportDefinitionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReportDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::CUR::ReportDefinition]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CUR::DescribeReportDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ReportDefinitions => ArrayRef[L<Paws::CUR::ReportDefinition>]




=head2 _request_id => Str


=cut

1;
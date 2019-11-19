
package Paws::Config::GetConformancePackComplianceSummaryResponse;
  use Moose;
  has ConformancePackComplianceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackComplianceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceSummaryResponse

=head1 ATTRIBUTES


=head2 ConformancePackComplianceSummaryList => ArrayRef[L<Paws::Config::ConformancePackComplianceSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;

package Paws::CloudSearch::DescribeAnalysisSchemesResponse;
  use Moose;
  has AnalysisSchemes => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::AnalysisSchemeStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeAnalysisSchemesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisSchemes => ArrayRef[L<Paws::CloudSearch::AnalysisSchemeStatus>]

The analysis scheme descriptions.


=head2 _request_id => Str


=cut


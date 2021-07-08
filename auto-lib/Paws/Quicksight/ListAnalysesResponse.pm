
package Paws::Quicksight::ListAnalysesResponse;
  use Moose;
  has AnalysisSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::AnalysisSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListAnalysesResponse

=head1 ATTRIBUTES


=head2 AnalysisSummaryList => ArrayRef[L<Paws::Quicksight::AnalysisSummary>]

Metadata describing each of the analyses that are listed.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

